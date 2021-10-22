package com.project.erp.Util;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.project.erp.DTO.BoardDTO;
import com.project.erp.DTO.MyHomeDTO;

import java.util.regex.Pattern;


//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
// BoardDTO ��ü�� ����� �������� ��ȿ�� üũ�� BoardValidator Ŭ���� �����ϱ�
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
	// Validator : �������� �����ϴ� �������̽� �� �ϳ�
public class MyHomeValidator implements Validator {

	//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
	//  ��ȿ�� üũ�� ��ü�� Ŭ���� Ÿ�� ���� ��� �����ϱ�
	//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
	@Override
	public boolean supports(Class<?> arg0) {
		return MyHomeDTO.class.isAssignableFrom(arg0);  // ������ ��ü�� Ŭ���� Ÿ�� ����
	}

	//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
	//  ��ȿ�� üũ�� �޼ҵ� �����ϱ�
	//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
	@Override
	public void validate(
		// Object��ü ��� -> ���� ���� �� �� ��/ ���� ���ϵ� �� �� ��
		Object obj          // DTO ��ü ���� �Ű����� => BoardDTO boardDTO �� ����
		, Errors errors     // ��ȿ�� �˻� �� �߻��ϴ� ������ �����ϴ� Errors ��ü ���� �Ű����� => BindingResult bindingResult�� ����
	){
		try {
			//nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
			// ��ȿ�� üũ�� DTO ��ü ���
			//nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
			// �ڱ� �ڷ������� ������Ű�� ����
				//: �θ� �ڷ������� ���� ������ ������ �ִ� ���� �޼��带 ȣ�� �Ұ����ϱ� ����
			MyHomeDTO dto = (MyHomeDTO)obj; //DTO ��ü�� ����ȯ

		
			ValidationUtils.rejectIfEmptyOrWhitespace(
					errors                       // Errors ��ü
					, "complex_name"                   // BoardDTO ��ü�� �Ӽ�������
					, "�������� �Է����ּ���.."         // BoardDTO ��ü�� �Ӽ��������� ��ų� �������� �����Ǿ� ������ ��� ����
				);
			
			ValidationUtils.rejectIfEmptyOrWhitespace(
				errors                       // Errors ��ü
				, "house_num"                   // BoardDTO ��ü�� �Ӽ�������
				, "������� �Է����ּ���."         // BoardDTO ��ü�� �Ӽ��������� ��ų� �������� �����Ǿ� ������ ��� ����
			);
			
			ValidationUtils.rejectIfEmptyOrWhitespace(
					errors                       // Errors ��ü
					, "tot_house_num"                   // BoardDTO ��ü�� �Ӽ�������
					, "�Ѽ������ �Է����ּ���."         // BoardDTO ��ü�� �Ӽ��������� ��ų� �������� �����Ǿ� ������ ��� ����
				);
			
			ValidationUtils.rejectIfEmptyOrWhitespace(
					errors                       // Errors ��ü
					, "move_date"                   // BoardDTO ��ü�� �Ӽ�������
					, "�������ֳ���� �Է����ּ���."         // BoardDTO ��ü�� �Ӽ��������� ��ų� �������� �����Ǿ� ������ ��� ����
				);

			ValidationUtils.rejectIfEmptyOrWhitespace(
				errors                    // Errors ��ü
				, "detail_location"                 // BoardDTO ��ü�� �Ӽ�������
				, "���ּҸ� �Է����ּ���."         // BoardDTO ��ü�� �Ӽ��������� ��ų� �������� �����Ǿ� ������ ��� ����
			);
			
			ValidationUtils.rejectIfEmptyOrWhitespace(
					errors                    // Errors ��ü
					, "dedicated_area"                 // BoardDTO ��ü�� �Ӽ�������
					, "��������� �Է����ּ���."         // BoardDTO ��ü�� �Ӽ��������� ��ų� �������� �����Ǿ� ������ ��� ����
				);
			ValidationUtils.rejectIfEmptyOrWhitespace(
					errors                    // Errors ��ü
					, "supply_type_no"                 // BoardDTO ��ü�� �Ӽ�������
					, "���������� �����ϼ���."         // BoardDTO ��ü�� �Ӽ��������� ��ų� �������� �����Ǿ� ������ ��� ����
				);
			ValidationUtils.rejectIfEmptyOrWhitespace(
					errors                    // Errors ��ü
					, "month_rent"                 // BoardDTO ��ü�� �Ӽ�������
					, "���Ӵ�Ḧ �Է����ּ���."         // BoardDTO ��ü�� �Ӽ��������� ��ų� �������� �����Ǿ� ������ ��� ����
				);
			ValidationUtils.rejectIfEmptyOrWhitespace(
					errors                    // Errors ��ü
					, "rent_deposit"                 // BoardDTO ��ü�� �Ӽ�������
					, "�Ӵ뺸������ �Է����ּ���."         // BoardDTO ��ü�� �Ӽ��������� ��ų� �������� �����Ǿ� ������ ��� ����
				);
		}catch(Exception ex) {
			System.out.println( "BoardValidator.validate �޼ҵ� ���� �� ���ܹ߻�!" );
		}
	}
    
}