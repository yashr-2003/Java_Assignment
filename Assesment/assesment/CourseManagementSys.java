	package com.assesment;
	
	import java.sql.*;
	import java.util.Scanner;
	
	public class CourseManagementSys 
	{
	
		public static void main(String[] args)
		{
			int CId = 0;//Course Id
			String CName = null;//Course Name
			int CF=0;//Course Fees
			String CDn = null;//Course Duration
			String CDl = null;//Course Detail
			boolean exit=false;
			
				try 
				{
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/java_assesment","root","");
					Statement st=con.createStatement();
				
					do {
					System.out.println("Add Cours(1) || View Course(2) || Search Course(3) || Edit Course(4) || Delete Course(5) || exit(6)");
					System.out.println("Select option = ");
					Scanner sc = new Scanner(System.in);
					int choice=sc.nextInt();
					sc.nextLine();
	
						switch(choice)
							{
							case 1:// add new course 
								{
									System.out.println("Course ID : ");
									CId=sc.nextInt();
									sc.nextLine();
					
									System.out.println("Course Name : ");
									CName=sc.nextLine();
									System.out.println("Course Fees : ");
									CF=sc.nextInt();
									sc.nextLine();
									System.out.println("Course Duration : ");
									CDn=sc.nextLine();
									System.out.println("Course Detail : ");
									CDl=sc.nextLine();
							
									int x=st.executeUpdate("insert into Add_Course value('"+CId+"','"+CName+"','"+CF+"','"+CDn+"','"+CDl+"')");
							
										if(x>0)
										{
										System.out.println("record inserted succselfuly");
										}
										else
										{
										System.out.println("failed");
										}
										System.out.println();
										System.out.println();
										break;
								}
							case 2: //view course details.
								{
								ResultSet rs = st.executeQuery("SELECT * FROM Add_Course");
				                      if (!rs.next()) 
				                      {
				                            System.out.println("No records found.");
				                        } 
				                      else {
				                            do {
				                                System.out.println(rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4) + " " + rs.getString(5));
				                            } while (rs.next());
				                        }
				                        break;
								}
							case 3:	 //Search Course
								{
									System.out.println("Enter Course Id for Searching = ");
									int SId=sc.nextInt();
									System.out.println();
									
									ResultSet rs=st.executeQuery("select * from Add_Course where Course_Id='"+SId+"'");
								    if (!rs.next()) 
				                      {
				                            System.out.println("No records found.");
				                        } 
				                      else {
				                            do {
				                                System.out.println(rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4) + " " + rs.getString(5));
				                            } while (rs.next());
				                        }
								    System.out.println();
								    System.out.println();
				                        break;
								}
							case 4: //Update course 
							{
								System.out.println("Course ID For Edit : ");
								int ECId=sc.nextInt();
								sc.nextLine();
							
								System.out.println("New Course Name = ");
								String NCName=sc.nextLine();
							
								System.out.println("New Course Fees = ");
								int NCF=sc.nextInt();
								sc.nextLine();
								
								System.out.println("New Course Duration = ");
								String NCDn=sc.nextLine();
							
								System.out.println("New Course Detail = ");
								String NCDl=sc.nextLine();
							
								int x=st.executeUpdate("update Add_Course set Course_Name='"+NCName+"',Course_Fees='"+NCF+"',Course_Duration='"+NCDn+"',Course_Detail='"+NCDl+"' where Course_Id='"+ECId+"'");
							
								if(x>0)
								{
									System.out.println("record updated");
								}
								else
								{
									System.out.println("error");
								}
								System.out.println();
								System.out.println();
								break;
							}
							
						
							case 5: //delete course
							{
								System.out.println("Course ID For Delete : ");
								int DCId=sc.nextInt();
						
								int x=st.executeUpdate("delete from Add_Course where Course_Id='"+DCId+"'");
						
								if(x>0)
								{
									System.out.println("Deleted");
								}
								else
								{
									System.out.println("Course id not available");
								}
								break;
							}
						case 6:
							{
								exit=true;
								
								System.out.println("you are exit");
								break;
							}
						default:
							{
								System.out.println("Option not avilable");
							}
						}
				}while(!exit);
				con.close();
					
			}
			catch (Exception e) 
			{
				
				e.printStackTrace();
			}
			
		
		
	}
}