package cn.itcast.utils;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;

import com.mchange.v2.c3p0.ComboPooledDataSource;

/**
 * ��װ���õĲ���
 * @author ADMIN
 *
 */
public class JdbcUtils {
	
	//��ʼ�����ӳ�
	private static DataSource  dataSource;
	static {
		dataSource = new ComboPooledDataSource();
	}
	
	public static DataSource getDataSource() {
		return dataSource;
	}
	
	/**
	 * ����DbUtils���ù��������
	 */
	
	public static QueryRunner getQuerrRunner() {
		return new QueryRunner(dataSource);
		
	}
	public static void main(String[] args) {
		try {
			System.out.println("1111");
			System.out.println(dataSource.getConnection());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
