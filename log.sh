function log_echo
{
    if [ ! -d ${LOG_FILE_DIR} ]; then
        mkdir -p ${LOG_FILE_DIR}
    fi

    typeset log_level=$1
    typeset log_file_name=$2
    typeset log_function_name=$3
    typeset log_line_no=$4
    typeset log_message=$5

    typeset log_date=$(date +"%Y-%m-%d %H:%M:%S")
    echo "[${log_date}][${log_level}][${log_file_name}][${log_function_name}][${log_line_no}][${LOG_FILE}] ${log_message}" | tee -a ${LOG_FILE_PATH}
}