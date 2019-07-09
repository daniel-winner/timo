package com.crm;

import com.crm.component.excel.ExcelUtil;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.ss.util.CellUtil;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.text.DecimalFormat;

public class ExcelTest {
    public static void main(String[] args) throws Exception{
        String ss ="D:\\IDEA-workspace\\Timo\\admin\\src\\main\\resources\\upload\\1562644522017_名单导入模板.xlsx";
        InputStream inputStream = (new FileInputStream(new File(ss)));
        Workbook workbook = new XSSFWorkbook(inputStream);
        Sheet sheet0 = workbook.getSheetAt(0);
        Row row = sheet0.getRow(1);


        System.out.println(row.getCell(0).getNumericCellValue());
//        System.out.println(toStringValue(row.getCell(4)));


    }
    public static String toStringValue(Cell cell){
        String value ="";
        DecimalFormat df = new DecimalFormat("#");
        switch (cell.getCellType()){
            case STRING:
                value = cell.getStringCellValue();
            break;
            case NUMERIC:
                value = df.format(cell.getNumericCellValue());
                break;
            default:cell.getStringCellValue();
        }
        return value;
    }


    private static boolean isTemplate(Row row) {
        String[] ss =new String[]{"号码","职位","公司名","是否在紧商网注册","在紧商网注册时间","业务员","标签","回访结果","回访记录","分配时间","备注"};
        boolean b = true;
        if (row==null) {
            return false;
        }
        for(int i = 0; i < ss.length; i++){
            if (row.getCell(i).getStringCellValue()==null){
                b=false;
                break;
            }else {
                if (!row.getCell(i).getStringCellValue().contains(ss[i])){
                    b=false;
                    break;
                }
            }
        }
        return b;
    }
}
