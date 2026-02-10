# Yas-upload-hinh

Kho lưu trữ hình ảnh, bản vẽ và PDF kỹ thuật cho danh mục linh kiện khuôn dập và khuôn ép nhựa của Huan Sin.

## Mục đích

- Giữ một nguồn dữ liệu thống nhất cho ảnh, catalogue và thông số kỹ thuật.
- Dễ dàng upload/đồng bộ lên website nhờ cấu trúc thư mục nhất quán.
- Theo dõi tình trạng hoàn tất của từng mã sản phẩm theo số thứ tự.

## Cấu trúc thư mục hiện tại

```text
/ (root)
├─ Linh Kiện Khuôn Dập/       # 01–78, linh kiện khuôn dập
├─ Linh Kiện Khuôn Ép Nhựa/   # 01–100, linh kiện khuôn ép nhựa
├─ pdf/                       # chỉ còn 2 file danh sách tham chiếu
│  ├─ danh sach ma sp link kien khuon nhua.txt
│  └─ danh sach sp link kien khuon dap.txt
├─ organize-pdfs.ps1          # script hỗ trợ quét/đặt PDF
└─ README.md
```

### Linh Kiện Khuôn Dập (01–78)

- Tên thư mục: `NN-product-slug` với `NN` là số thứ tự 2 chữ số (01…78).
- Nội dung: PDF catalogue, ảnh sản phẩm/bảng thông số; các biến thể (ví dụ lò xo tải khác nhau) được gom chung trong cùng thư mục.

### Linh Kiện Khuôn Ép Nhựa (01–100)

- Tên thư mục: `NN-product-slug` với `NN` là số thứ tự 2 chữ số (01…100).
- Nội dung: PDF catalogue, ảnh sản phẩm/bảng thông số; các biến thể đặt cùng thư mục (ví dụ runner-lock-pins, straight-side-locks-sets-yk30).

### pdf/

- Hiện chỉ giữ 2 file danh sách mã sản phẩm để tra cứu nhanh.
- Các thư mục tạm chứa PDF nguồn đã được dọn bỏ sau khi hợp nhất vào cây chính.

## Quy tắc đặt tên & lưu trữ

- Giữ nguyên số thứ tự và slug gốc của thư mục (không đổi dấu gạch ngang, không thêm khoảng trắng).
- File đặt theo tên gốc từ catalogue; ưu tiên bản PDF chất lượng cao, bổ sung ảnh JPG/PNG nếu cần minh họa.
- Đặt biến thể vào cùng thư mục mã sản phẩm, không tạo thư mục mới trừ khi xuất hiện mã hoàn toàn mới.
- Không để trùng file; giữ một bản chuẩn, các bản khác (nếu cần) thêm hậu tố ngắn gọn để phân biệt.

## Quy trình thêm tài liệu mới

1) Xác định thư mục số thứ tự tương ứng; nếu chưa có mã mới, trao đổi trước khi tạo thư mục mới.
2) Sao chép PDF/ảnh vào thư mục, dùng tên file rõ ràng (giữ slug sản phẩm và thông tin biến thể).
3) Xóa/thanh lý thư mục tạm sau khi gộp để tránh dư thừa.
4) Cập nhật README nếu phát sinh quy tắc mới hoặc thay đổi cấu trúc.

## Tình trạng hiện tại (17 Jan 2026)

- Cây thư mục chính đã gọn: chỉ còn 2 nhóm Linh Kiện và 2 file danh sách trong `pdf/`.
- Không còn thư mục PDF tạm; toàn bộ catalogue/ảnh nằm trong các thư mục được đánh số.