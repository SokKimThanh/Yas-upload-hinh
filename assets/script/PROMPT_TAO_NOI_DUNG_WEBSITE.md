# PROMPT TẠO NỘI DUNG SẢN PHẨM CHO WEBSITE

## Mục đích
Chuyển đổi thông tin kỹ thuật từ file `info.txt` sang định dạng phù hợp để đăng sản phẩm lên website thương mại điện tử.

---

## Hướng dẫn sử dụng

Khi có file `info.txt` chứa thông tin sản phẩm, hãy sử dụng prompt sau:

```
Dựa trên thông tin kỹ thuật trong file info.txt, hãy tạo nội dung đầy đủ để đăng sản phẩm lên website với cấu trúc sau:

### 1. THÔNG TIN CƠ BẢN

**Tên sản phẩm** (Tối đa 250 ký tự):
- Tên tiếng Việt: [Tên sản phẩm bằng tiếng Việt]
- Tên tiếng Anh: [Tên sản phẩm từ file info]
- Mã sản phẩm: [Mã MODEL từ file info]

**Miêu tả ngắn** (2-3 câu):
- Viết mô tả ngắn gọn, súc tích về sản phẩm
- Nêu bật đặc điểm chính và ứng dụng

**Nội dung chi tiết**:
- Giới thiệu sản phẩm
- Đặc điểm kỹ thuật
- Ứng dụng
- Ưu điểm nổi bật

### 2. CHI TIẾT SẢN PHẨM

**Danh mục sản phẩm**:
- Danh mục chính: [Từ tên thư mục, ví dụ: "Linh Kiện Khuôn Ép Nhựa"]
- Danh mục phụ: [Từ tên thư mục con nếu có]

**Đặc điểm sản phẩm** (Trích xuất từ file info):
- Vật liệu: [Material/SKD61...]
- Độ cứng bề mặt: [Surface Hardness]
- Độ cứng vật liệu nền: [Base Material]
- Xử lý nhiệt: [Heat Treatment/Nitrided...]
- Dung sai: [Tolerance specifications]
- Phạm vi kích thước: [Size Range]

**Thương hiệu**:
- YAS-TEK (KHÔNG hiển thị thương hiệu nguồn hàng từ file info)

**Mã sản phẩm**:
- [Mã MODEL chính, ví dụ: ESVD, ESVDT]

**Tập tin đính kèm**:
- File PDF catalog (nếu có)
- File drawing kỹ thuật (nếu có)

### 3. THÔNG SỐ KỸ THUẬT (Dạng bảng)

Tạo bảng thông số kỹ thuật với các cột:
| Thông số | Ký hiệu | Giá trị | Đơn vị | Ghi chú |
|----------|---------|---------|--------|---------|
| [Tên thông số] | [Symbol] | [Value/Range] | [Unit] | [Note] |

Ví dụ:
| Thông số | Ký hiệu | Giá trị | Đơn vị | Ghi chú |
|----------|---------|---------|--------|---------|
| Đường kính ngoài | D | 5.0 - 20.0 | mm | H7 tolerance |
| Chiều dài | L | 50.00 - 500.00 | mm | 1mm increments |

### 4. BẢNG KÍCH THƯỚC TIÊU CHUẨN

Tạo bảng kích thước chuẩn từ thông tin trong file info:
- Các model/type có sẵn
- Kích thước tương ứng
- Dung sai
- Phạm vi đặt hàng

### 5. HƯỚNG DẪN ĐẶT HÀNG

**Order Example/Ví dụ đặt hàng**:
- Cách mã hóa sản phẩm
- Ví dụ cụ thể từ file info
- Giải thích ý nghĩa từng thông số

**Alterations/Tùy chỉnh đặc biệt**:
- Các tùy chọn customization
- Mã code cho từng loại tùy chỉnh
- Giới hạn và điều kiện

### 6. HÌNH ẢNH

**Yêu cầu hình ảnh cần tải lên**:
- Hình ảnh sản phẩm thực tế (đã xóa watermark/logo nguồn hàng)
- Hình ảnh bản vẽ kỹ thuật từ file info (đã xóa tên công ty nguồn)
- Hình ảnh kích thước chi tiết
- Hình ảnh bảng thông số (đã xóa thông tin nhà sản xuất gốc)
- Logo YAS-TEK (thay thế logo nguồn)
- Tối thiểu 3-5 ảnh chất lượng cao

### 7. BIẾN THỂ SẢN PHẨM

**Thuộc tính sản phẩm** (nếu có nhiều options):
- Kích thước (D, L, P, V, N...)
- Loại đầu (JIS head, 4mm head...)
- Vật liệu
- Xử lý bề mặt

### 8. KÊNH BÁN HÀNG

Đề xuất kênh phù hợp:
- ☐ Website chính
- ☐ Lazada.vn
- ☐ Tiki.vn
- ☐ Shopee.vn
- ☐ Tiktok Shop

### 9. CẤU HÌNH CHUNG

**Hiển thị sản phẩm**:
- ☐ Tiêu biểu (nếu là sản phẩm chủ lực)

**Nhãn/Tags** (phân tách bằng dấu phẩy):
- [Liệt kê các từ khóa liên quan, phân tách bằng dấu phẩy, ví dụ:]
  - linh kiện khuôn, ejector sleeves, SKD61, stepped ejector, [tên sản phẩm], [ứng dụng], YAS-TEK
  - **KHÔNG bao gồm tên thương hiệu nguồn hàng**

### 10. SEO

**Đường dẫn** (URL-friendly):
- Đề xuất: /[danh-muc]/[ten-san-pham-khong-dau]
- Ví dụ: /linh-kien-khuon-ep-nhua/skd61-stepped-ejector-sleeves

**Tiêu đề trang** (70 ký tự):
- [Tên sản phẩm] - [Thương hiệu] | YAS-TEK

**Mô tả trang** (320-360 ký tự):
- Viết mô tả hấp dẫn, chứa từ khóa chính
- Nêu rõ ưu điểm và lợi ích
- Kêu gọi hành động

**Từ khóa SEO**:
- [Liệt kê 10-15 từ khóa liên quan, phân tách bằng dấu phẩy]

---

## YÊU CẦU ĐỊNH DẠNG

1. **Văn bản**:
   - Ngôn ngữ: Song ngữ Việt-Anh
   - Tiếng Việt: Chuyên nghiệp, rõ ràng
   - Tiếng Anh: Giữ nguyên thuật ngữ kỹ thuật

2. **Bảng biểu**:
   - Sử dụng Markdown table
   - Đầy đủ, dễ đọc
   - Có đơn vị đo lường rõ ràng

3. **Thông tin kỹ thuật**:
   - Chính xác 100% từ file info
   - Giữ nguyên ký hiệu, dung sai
   - Ghi chú đầy đủ

4. **Nội dung marketing**:
   - Hấp dẫn nhưng trung thực
   - Tập trung vào lợi ích khách hàng
   - Chuyên nghiệp, B2B
   - KHÔNG đề cập đến nguồn gốc nhà sản xuất gốc
   - Chỉ sử dụng thương hiệu YAS-TEK

---

## GHI CHÚ

- Luôn kiểm tra kỹ thông tin trước khi đăng
- Đảm bảo hình ảnh chất lượng cao, rõ nét
- Cập nhật thông tin liên hệ, giá cả (nếu có)
- Tối ưu cho cả desktop và mobile
- Tuân thủ các tiêu chuẩn SEO
- **QUAN TRỌNG: KHÔNG bao giờ đề cập đến thương hiệu nguồn hàng (như HUAN SIN, MISUMI, hoặc bất kỳ nhà sản xuất gốc nào)**
- **Luôn sử dụng thương hiệu YAS-TEK trong mọi nội dung**

---

## VÍ DỤ ÁP DỤNG

Với file info.txt hiện tại về "SKD61 STEPPED EJECTOR SLEEVES", hãy tạo đầy đủ nội dung theo 10 mục trên.

**LƯU Ý QUAN TRỌNG:**
- KHÔNG sử dụng tên thương hiệu nguồn hàng (như HUAN SIN, MISUMI...)
- Thay thế MỌI thông tin thương hiệu bằng YAS-TEK
- Loại bỏ mọi đề cập đến nhà sản xuất gốc
- Tập trung vào thông số kỹ thuật, không nêu nguồn gốc
```

---

## Lưu ý khi sử dụng prompt

1. **Copy toàn bộ nội dung** file info.txt vào ngữ cảnh trước khi yêu cầu AI tạo nội dung
2. **QUAN TRỌNG:** Yêu cầu AI KHÔNG hiển thị thương hiệu nguồn hàng, chỉ dùng YAS-TEK
3. **Kiểm tra** kỹ các thông số kỹ thuật được AI tạo ra
4. **Loại bỏ** mọi thông tin về nhà sản xuất gốc (tên công ty, website, logo nguồn)
5. **Bổ sung** hình ảnh thực tế của sản phẩm (đã xóa watermark nguồn nếu có)
6. **Tùy chỉnh** nội dung marketing cho phù hợp với đối tượng khách hàng
7. **Thay thế** mọi tên thương hiệu bằng YAS-TEK trước khi đăng

---

## Quy trình làm việc đề xuất

1. Chuẩn bị file `info.txt` của sản phẩm
2. Sử dụng prompt trên với AI
3. Review và chỉnh sửa nội dung do AI tạo ra
4. Chuẩn bị hình ảnh sản phẩm
5. Điền vào form website theo cấu trúc đã tạo
6. Preview và kiểm tra trước khi publish
7. Tối ưu SEO và theo dõi hiệu quả

---

*Prompt này được thiết kế để tự động hóa quá trình tạo nội dung sản phẩm, tiết kiệm thời gian và đảm bảo tính nhất quán.*
