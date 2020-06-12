package chap13.board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class BoardDBBean {
	private static BoardDBBean instance = new BoardDBBean();
	
	private BoardDBBean() {}
	public static BoardDBBean getInstance() {
		return instance;
	}
	
	public String doA() {
		return "연결";
	}
	
	public void insertArticle(BoardDataBean1 dataBean) {
		System.out.println(dataBean);
		Connection conn = null; //DB 연결 하는 객체
		PreparedStatement pstmt = null; //sql 연결하는데 insert select 등
		// jar 파일 관리하는 회사 maven or gradle
		// jar 파일 연결 되어져 있는지 확인 Class.forName
		// Connection 객체 연결 Drivermanager.getConnection();
		// prepareStatement 생성 conn.prepareStatement();
		// 실행
		
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection("jdbc:sqlserver://192.168.0.200:1433;database=hi_20200611",					
					"sa", "8765432!");
//			System.out.println("디비 연결 성공");
			pstmt = conn.prepareStatement("INSERT INTO [dbo].[Board]" + 
					"           ([num]" + 
					"           ,[writer]" + 
					"           ,[email]" + 
					"           ,[subject]" + 
					"           ,[passwd]" + 
					"           ,[reg_data]" + 
					"           ,[readcount]" + 
					"           ,[ref]" + 
					"           ,[re_step]" + 
					"           ,[re_level]" + 
					"           ,[content]" + 
					"           ,[ip])" + 
					"     VALUES" + 
					"           ((select ISNULL(max(num)+1,1) as maxnum from Board)" + 
					"           ,?" + 
					"           ,?" + 
					"           ,?" + 
					"           ,?" + 
					"           ,getdate()" + 
					"           ,0" + 
					"           ,0" + 
					"           ,0" + 
					"           ,0" + 
					"           ,?" + 
					"           ,'192.168.0.198')");
			pstmt.setString(1, dataBean.getWriter());
			pstmt.setString(2, dataBean.getEmail());
			pstmt.setString(3, dataBean.getSubject());
			pstmt.setString(4, dataBean.getPasswd());
			pstmt.setString(5, dataBean.getContent());
			
			pstmt.executeUpdate();
			System.out.println("insert 성공");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public void insertDetailArticle(String name, String subject, String email
			, String content, String password) {
		
	}
}
