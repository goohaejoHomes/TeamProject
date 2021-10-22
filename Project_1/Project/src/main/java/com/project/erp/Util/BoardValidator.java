package com.project.erp.Util;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.project.erp.DTO.BoardDTO;

import java.util.regex.Pattern;


//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
// BoardDTO ��ü�� ����� �������� ��ȿ�� üũ�� BoardValidator Ŭ���� �����ϱ�
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
	// Validator : �������� �����ϴ� �������̽� �� �ϳ�
public class BoardValidator implements Validator {

	//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
	//  ��ȿ�� üũ�� ��ü�� Ŭ���� Ÿ�� ���� ��� �����ϱ�
	//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
	@Override
	public boolean supports(Class<?> arg0) {
		return BoardDTO.class.isAssignableFrom(arg0);  // ������ ��ü�� Ŭ���� Ÿ�� ����
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
			BoardDTO dto = (BoardDTO)obj; //DTO ��ü�� ����ȯ

		
			ValidationUtils.rejectIfEmptyOrWhitespace(
					errors                       // Errors ��ü
					, "head_category_no"                   // BoardDTO ��ü�� �Ӽ�������
					, "���Ӹ��� �������ּ���."         // BoardDTO ��ü�� �Ӽ��������� ��ų� �������� �����Ǿ� ������ ��� ����
				);
			
			//nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
			//nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
			// ValidationUtils Ŭ������ rejectIfEmptyOrWhitespace �޼ҵ� ȣ���Ͽ�
			//		BoardDTO ��ü�� �Ӽ������� writer �� ��ų� �������� �����Ǿ� ������
			//		��� �޽����� Errors ��ü�� �����ϱ�
			//nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
			ValidationUtils.rejectIfEmptyOrWhitespace(
				errors                       // Errors ��ü
				, "subject"                   // BoardDTO ��ü�� �Ӽ�������
				, "������ �Է����ּ���."         // BoardDTO ��ü�� �Ӽ��������� ��ų� �������� �����Ǿ� ������ ��� ����
			);
			//nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
			// BoardDTO ��ü�� �Ӽ������� "subject" ����� �������� ���̰� 20�� ���� ũ��
			// Errors ��ü�� �Ӽ������� "subject" �� ��� �޽��� �����ϱ�
			//nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
			String subject = dto.getSubject();
			if( subject!=null && subject.length() >50) {
				errors.rejectValue("subject", "������ 50�� ���� �Դϴ�.");
			}
			


			//nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
			//nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
			// ValidationUtils Ŭ������ rejectIfEmptyOrWhitespace �޼ҵ� ȣ���Ͽ�
			//		BoardDTO ��ü�� �Ӽ������� writer �� ��ų� �������� �����Ǿ� ������
			//		��� �޽����� Errors ��ü���� �����ϱ�
			//nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
			ValidationUtils.rejectIfEmptyOrWhitespace(
				errors                    // Errors ��ü
				, "content"                 // BoardDTO ��ü�� �Ӽ�������
				, "������ �Է����ּ���."         // BoardDTO ��ü�� �Ӽ��������� ��ų� �������� �����Ǿ� ������ ��� ����
			);
			//nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
			// BoardDTO ��ü�� �Ӽ������� "content" ����� �������� ���̰� 30�� ���� ũ��
			// Errors ��ü�� �Ӽ������� "content" �� ��� �޽��� �����ϱ�
			//nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
			String content = dto.getContent();
			if( content!=null && content.length() >1000) {
				errors.rejectValue("content", "������ ������� 1000������ �Դϴ�.");
			}

			


		}catch(Exception ex) {
			System.out.println( "BoardValidator.validate �޼ҵ� ���� �� ���ܹ߻�!" );
		}
	}
    
}