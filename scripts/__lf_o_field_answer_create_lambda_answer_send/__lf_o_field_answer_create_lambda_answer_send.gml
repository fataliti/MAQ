/// __lf_o_field_answer_create_lambda_answer_send()
//!#lambda lambda_answer_send
{
	var answerBuf = buffer_create(64, buffer_grow,1);
    buffer_write(answerBuf, buffer_u8, EPlayer.answer);
    buffer_write(answerBuf, buffer_u8, o_client._id);
    buffer_write(answerBuf, buffer_string, textfield_string);
    sendHost(answerBuf);
    
    if o_control.countdown <= 0
    	textfield_active = false;
}