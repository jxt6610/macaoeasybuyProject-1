package macaoeasybuy.tool.pagebean;

import java.io.ByteArrayOutputStream;
import java.util.Calendar;
import java.util.Random;

public class DataTimeNumber {


	public static void main(String[] args) {
		// TODO Auto-generated method stub

		System.out.println(DataTimeNumber.GoodsAccount(199, 1));;
	}

	
	public static int getSubString(String content, int size, String encoding) throws Exception{
		Calendar c = Calendar.getInstance();//���Զ�ÿ��ʱ���򵥶��޸�
		int year = c.get(Calendar.YEAR); 
		int month = c.get(Calendar.MONTH); 
		int NowTime=year;
		
		if(encoding == null || encoding.equals("")){
		    throw new Exception("�ַ����벻��Ϊ��");
		   }
		   if(content == null){
		    throw new Exception("�ַ������ݲ���Ϊ��");
		   }
		   if(size<0){
		    throw new Exception("��ȡ���ֽ�������С��0");
		   }
		   if(content.getBytes().length < size){
		    size = content.getBytes().length;
		   }
		   ByteArrayOutputStream out = new ByteArrayOutputStream();
		   int index = 0; //�ַ������ַ�λ��
		   int count = 0; //Ŀǰ���ֽ���
		   while(count < size){
		    //��ǰ���ֽ���Ŀ
		    count += content.substring(index, index+1).getBytes(encoding).length;
		    if(count<=size){
		      out.write(content.substring(index, index+1).getBytes(encoding));
		    }
		    index++;
		   }
		   String result = new String(out.toByteArray(),encoding);
		   int Result=Integer.parseInt(result);//��������
		   out.close();
		   return NowTime-Result;
		}
	
	
	/*
	 * ������ݺ�Ա�������Զ�����Ա���˺�
	 * */
	 public static String randomAccount(){
		 Calendar c = Calendar.getInstance();//���Զ�ÿ��ʱ���򵥶��޸�
			int year = c.get(Calendar.YEAR); 
			int month = c.get(Calendar.MONTH); 
			int date = c.get(Calendar.DATE); 
			int hour = c.get(Calendar.HOUR_OF_DAY); 
			int minute = c.get(Calendar.MINUTE); 
			int second = c.get(Calendar.SECOND); 
			
			int max=10000000;
	        int min=10;
	        Random random = new Random();

	        int s = random.nextInt(max)%(max-min+1) + min;
			
		   String tempAccout;
			if(s<=9){
				tempAccout=year+"00"+s;
			}else if(s>=10&&s<=99){
				tempAccout=year+"0"+s;
			}else{
				tempAccout=year+""+s;
			}
			
			String tem=month+""+date+""+hour+""+minute+""+second;
			return (tem+tempAccout);
	  }

	 public static  String GoodsAccount(int Father,int Child){

		 
		 String goodsAccount1=null;
		 String goodsAccount2=null;
		 if(Father<=9){
			 goodsAccount1="0100"+Father;
			}else if(Father>=10&&Father<=99){
				goodsAccount1="010"+Father;
			}else{
				goodsAccount1="01"+Father;
			}
		 if(Child<=9){
			 goodsAccount2="0000"+Child;
			}else if(Child>=10&&Child<=99){
				goodsAccount2="000"+Child;
			}else{
				goodsAccount2="00"+Child;
			}
		 
		 
		return goodsAccount1+"-"+goodsAccount2;
	 }
	 
	 public static String LogNumber(int num){
		 
		 Calendar c = Calendar.getInstance();//���Զ�ÿ��ʱ���򵥶��޸�
			int year = c.get(Calendar.YEAR); 
			int month = c.get(Calendar.MONTH); 
			int date = c.get(Calendar.DATE); 
			int hour = c.get(Calendar.HOUR_OF_DAY); 
			int minute = c.get(Calendar.MINUTE); 
			int second = c.get(Calendar.SECOND); 
			String Lognumber;
		 if(num<=9){
			 Lognumber=year+"00"+num;
			}else if(num>=10&&num<=99){
				Lognumber=year+"0"+num;
			}else{
				Lognumber=year+""+num;
			}
		return Lognumber;
		 
	 }
}
