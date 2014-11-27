backup_file
===========
# I. Mục tiêu 
  Mục tiêu của bài viết lập lịch cho khoảng thời gian backup file trong hệ thống. 
  
  Thời gian lập lịch sẽ là trong 1 ngày cập nhật 2 lần vào lúc 13h và 24h. Trong thư mục chứa file backup chỉ tồn tại 7 backup mới nhất.

# II. Các bước thực hiện
  B1: Tạo thư mục chứa file backup như đường dẫn sau: 
  
    /root/backup
  
  B2: Tải file shell backup theo đường link sau. Đặt file shell vào thư mục bạn lựa chọn ở đấy mình đặt trong thư mục /root. 
  
    wget https://github.com/thanhha123/backup_file/blob/master/backupfile.sh
  
  
  B3: Cài đặt Cron trên Ubuntu: 

    # apt-get updte 
    # apt-get install cron 
  
  B4: Sau khi cài đặt chạy lệnh sau: 
  
    # crontab -e 
  
  Nếu là lần đầu chạy lệnh    crontab -e sẽ hiện ra mục để chọn chương trình mở file mậc định. Mình sử dụng nano để mở ứng dụng lên sẽ chọn là 2. 
  
  B5: Thêm dòng sau vào file: 
  
    0 0,13 * * * bash /root/backup.sh 
    
  B6: Chay file script. Hoan thanh qua trinh backup file


