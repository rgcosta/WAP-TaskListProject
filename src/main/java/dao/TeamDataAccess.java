package dao;

import db.DBUtils;
import model.Team;
import model.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class TeamDataAccess {

    public static List<Team> getAll(){
        List<Team> ls = new LinkedList<>();

        try {
            ResultSet rs = DBUtils.getPreparedStatement("select * from user_team order by id desc").executeQuery();
            while(rs.next()){
                Team n = new Team();
                n.setId(rs.getInt(1));
                n.setTeamName(rs.getString(2));
                n.setUserId(rs.getInt(3));
                ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TaskDataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }


        return ls;
    }

    public static Team getTeamById(int id){
        List<Team> ls = new LinkedList<>();
        String sql = "select * from user_team where id = " + id + " order by id desc";
        try {
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
                Team n = new Team();
                n.setId(rs.getInt(1));
                n.setTeamName(rs.getString(2));
                n.setUserId(rs.getInt(3));
                ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TaskDataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }


        return ls.get(0);
    }

    public void save(Team team){
        try {
            PreparedStatement ps = DBUtils.getPreparedStatement("insert into user_team values(?,?)");
            ps.setString(1, team.getTeamName());
            ps.setInt(2, team.getUserId());
            ps.executeUpdate();

        }catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TaskDataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void delete(int id){
        try {
            String sql = "delete user_team where id = ?";
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TaskDataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void update(Team team){
        try {
            String sql = "update user_team SET teamName = ?"
                    + ",user_Id = ?"
                    + " where id = ?";
            PreparedStatement ps= DBUtils.getPreparedStatement(sql);
            ps.setString(1, team.getTeamName());
            ps.setInt(2, team.getUserId());
            ps.setInt(3, team.getId());
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TaskDataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static List<User> getAllUsers(){
        List<User> ls = new LinkedList<>();

        try {
            ResultSet rs = DBUtils.getPreparedStatement("select * from users order by id desc").executeQuery();
            while(rs.next()){
                User n = new User();
                n.setId(rs.getInt(1));
                n.setName(rs.getString(2));
                ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TaskDataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }

        return ls;
    }
}
