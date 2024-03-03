package model.feedback;


	public class Feedback {
		
		protected int id;
		protected int user_id;
		protected String fname;
		protected String lname;
		protected String description;
		protected int rating;
		protected String created_at;
		

		public Feedback() {}


		/**
		 * @param id
		 * @param user_id
		 * @param description
		 * @param rating
		 * @param created_at
		 */
		public Feedback(int id, int user_id, String fname, String lname, String description, int rating, String created_at) {
			this.id = id;
			this.user_id = user_id;
			this.fname = fname;
			this.lname = lname;
			this.description = description;
			this.rating = rating;
			this.created_at = created_at;
		}


		/**

		 * @param user_id
		 * @param description
		 * @param rating
		 * @param created_at
		 */
		public Feedback(int user_id, String fname, String lname, String description, int rating) {
			this.user_id = user_id;
			this.fname = fname;
			this.lname = lname;
			this.description = description;
			this.rating = rating;
		}
		
		


		/**
		 * @param id
		 * @param event_id
		 * @param user_id
		 * @param description
		 * @param rating
		 */
		public Feedback(int id,int user_id, String fname, String lname, String description, int rating) {
			this.id = id;
			this.user_id = user_id;
			this.fname = fname;
			this.lname = lname;
			this.description = description;
			this.rating = rating;
		}


		/**
		 * @return the id
		 */
		public int getId() {
			return id;
		}


		/**
		 * @param id the id to set
		 */
		public void setId(int id) {
			this.id = id;
		}

		/**
		 * @return the user_id
		 */
		public int getUser_id() {
			return user_id;
		}
		

		/**
		 * @param user_id the user_id to set
		 */
		public void setUser_id(int user_id) {
			this.user_id = user_id;
		}
		
		
		public String getFname() {
			return fname;
		}


		public void setFname(String fname) {
			this.fname = fname;
		}


		public String getLname() {
			return lname;
		}


		public void setLname(String lname) {
			this.lname = lname;
		}



		/**
		 * @return the description
		 */
		public String getDescription() {
			return description;
		}


		/**
		 * @param description the description to set
		 */
		public void setDescription(String description) {
			this.description = description;
		}


		/**
		 * @return the rating
		 */
		public int getRating() {
			return rating;
		}


		/**
		 * @param rating the rating to set
		 */
		public void setRating(int rating) {
			this.rating = rating;
		}


		/**
		 * @return the created_at
		 */
		public String getCreated_at() {
			return created_at;
		}


		/**
		 * @param created_at the created_at to set
		 */
		public void setCreated_at(String created_at) {
			this.created_at = created_at;
		}
		
		
	}



