package service.feedback;


	import java.sql.Connection;
	import java.sql.ResultSet;
	import java.sql.Statement;
	import java.util.ArrayList;


	import model.feedback.Feedback;
	import util.DBConnect;


	public class FeedbackServiceImpl {
		
		static Connection con = null;
		static Statement stmt = null;
		static ResultSet rs = null;
		
		
		// Create feedback
		
		public static void createFeedback(Feedback feedback) {
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "INSERT INTO `feedback` (`user_id`, `fname`, `lname`, `description`, `rating`) VALUES ('" + feedback.getUser_id() + "','" + feedback.getFname() + "', '" + feedback.getLname() + "', '" + feedback.getDescription() + "', '" + feedback.getRating() + "');";
				stmt.executeUpdate(sql);
			}
			catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}

		// Display All feedback
		
		public static ArrayList<Feedback> getFeedbacks(){
			
			 ArrayList<Feedback> feedbacks = new ArrayList<>();
				
				try {
					con = DBConnect.getConnection();
					stmt = con.createStatement();
					String sql = "SELECT * FROM Feedback";
					rs = stmt.executeQuery(sql);
					
					while (rs.next()) {
						int id = rs.getInt(1);
						int user_id = rs.getInt(2);
						String fname = rs.getString(3);
						String lname = rs.getString(4);
						String description = rs.getString(5);
						int rating = rs.getInt(6);
						String created_at = rs.getString(7);
			
						Feedback f = new Feedback(id, user_id, fname, lname, description, rating, created_at);
						
						feedbacks.add(f);
					}
				}
				catch (Exception e) {
					System.out.println(e.getMessage());
				}
				
				return feedbacks;
			
		}

		// getFeedback by user ID
		public static ArrayList<Feedback> getFeedbackByUserID(int user_id) {
			
			ArrayList<Feedback> feedbacks = new ArrayList<>();
	        
	        try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "SELECT * FROM Feedback WHERE user_id = '" + user_id + "'";
				rs = stmt.executeQuery(sql);
				
				while (rs.next()) {
					int id = rs.getInt(1);
					int uid = rs.getInt(2);
					String fname = rs.getString(3);
					String lname = rs.getString(4);
					String description = rs.getString(5);
					int rating = rs.getInt(6);
					String created_at = rs.getString(7);
		
					Feedback f = new Feedback(id,uid,fname, lname,description, rating, created_at);
					
					feedbacks.add(f);
				}
			}
			catch (Exception e) {
				System.out.print(e);
				e.printStackTrace();
			}
			
			return feedbacks;
		}
		
		
		
		// Update Feedback
		public static void updateFeedback(Feedback feedback) {
				
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "UPDATE `feedback` SET `id`='" + feedback.getId() + "', `user_id`='" + feedback.getUser_id() + "',`fname`='" + feedback.getFname() + "',`lname`='" + feedback.getLname() + "', `description`='" + feedback.getDescription() + "', `rating`='" + feedback.getRating() + "' WHERE `id`='" + feedback.getId() + "';";
				stmt.executeUpdate(sql);
			}
			catch (Exception e) {
				System.out.print(e);
				e.printStackTrace();
			}
				
		}
		
		
		
		
		// getFeedback by feedback ID
			public static Feedback getFeedbackByFeedbackID(int feedback_id) {
					
			Feedback feedback = new Feedback();
			        
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "SELECT * FROM Feedback WHERE id = '" + feedback_id + "'";
				rs = stmt.executeQuery(sql);
						
				while (rs.next()) {
					feedback.setId(rs.getInt("id"));
					feedback.setUser_id(rs.getInt("user_id"));
					feedback.setFname(rs.getString("fname"));
					feedback.setLname(rs.getString("lname"));
					feedback.setDescription(rs.getString("description"));
					feedback.setRating(rs.getInt("rating"));
					feedback.setCreated_at(rs.getString("created_at"));
				}
			}
			catch (Exception e) {
				System.out.print(e);
				e.printStackTrace();
			}
					
			return feedback;
		}

		//delete
		public static void deleteFeedback(int fid) {
				
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "DELETE FROM `feedback` WHERE `id`='" + fid + "';";
				stmt.executeUpdate(sql);
			}
			catch (Exception e) {
				System.out.print(e);
				e.printStackTrace();
			}
		}
	}
	
	

