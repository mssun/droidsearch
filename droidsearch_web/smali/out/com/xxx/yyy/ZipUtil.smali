.class public final Lcom/xxx/yyy/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compress([B)[B
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xxx/yyy/ZipUtil;->compress([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static compress([BI)[B
    .registers 4
    .parameter "data"
    .parameter "compressionType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v1, 0x8000

    .line 105
    array-length v0, p0

    if-le v0, v1, :cond_b

    .line 106
    invoke-static {p0, p1, v1, v1}, Lcom/xxx/yyy/ZipUtil;->compress([BIII)[B

    move-result-object v0

    .line 109
    :goto_a
    return-object v0

    :cond_b
    array-length v0, p0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/xxx/yyy/ZipUtil;->compress([BIII)[B

    move-result-object v0

    goto :goto_a
.end method

.method public static compress([BIII)[B
    .registers 10
    .parameter "data"
    .parameter "compressionType"
    .parameter "plainWindowSize"
    .parameter "huffmanWindowSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x400

    .line 126
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 127
    .local v1, bout:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/xxx/yyy/GZipOutputStream;

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xxx/yyy/GZipOutputStream;-><init>(Ljava/io/OutputStream;IIII)V

    .line 129
    .local v0, zipOutputStream:Lcom/xxx/yyy/GZipOutputStream;
    invoke-virtual {v0, p0}, Lcom/xxx/yyy/GZipOutputStream;->write([B)V

    .line 130
    invoke-virtual {v0}, Lcom/xxx/yyy/GZipOutputStream;->close()V

    .line 132
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static compressIntArray([I)[B
    .registers 2
    .parameter "rgb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {p0}, Lcom/xxx/yyy/ZipUtil;->convertIntToByteArray([I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/xxx/yyy/ZipUtil;->compress([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static compressRgbArray([I)[B
    .registers 3
    .parameter "rgb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/xxx/yyy/ZipUtil;->convertRgbToByteArray([III)[B

    move-result-object v0

    invoke-static {v0}, Lcom/xxx/yyy/ZipUtil;->compress([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static compressRgbArray([III)[B
    .registers 4
    .parameter "rgb"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {p0, p1, p2}, Lcom/xxx/yyy/ZipUtil;->convertRgbToByteArray([III)[B

    move-result-object v0

    invoke-static {v0}, Lcom/xxx/yyy/ZipUtil;->compress([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static convertByteToIntArray([B)[I
    .registers 6
    .parameter "data"

    .prologue
    .line 184
    array-length v3, p0

    div-int/lit8 v3, v3, 0x4

    new-array v2, v3, [I

    .line 185
    .local v2, rgb:[I
    const/4 v1, 0x0

    .line 186
    .local v1, j:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    array-length v3, v2

    if-lt v0, v3, :cond_b

    .line 195
    return-object v2

    .line 189
    :cond_b
    add-int/lit8 v3, v1, 0x0

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    .line 190
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    .line 189
    or-int/2addr v3, v4

    .line 191
    add-int/lit8 v4, v1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    .line 189
    or-int/2addr v3, v4

    .line 192
    add-int/lit8 v4, v1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x0

    .line 189
    or-int/2addr v3, v4

    .line 188
    aput v3, v2, v0

    .line 193
    add-int/lit8 v1, v1, 0x4

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static convertByteToRgbArray([B)[I
    .registers 6
    .parameter "data"

    .prologue
    .line 272
    array-length v3, p0

    div-int/lit8 v3, v3, 0x3

    new-array v2, v3, [I

    .line 273
    .local v2, rgb:[I
    const/4 v1, 0x0

    .line 274
    .local v1, j:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    array-length v3, v2

    if-lt v0, v3, :cond_b

    .line 283
    return-object v2

    .line 277
    :cond_b
    add-int/lit8 v3, v1, 0x0

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    .line 278
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    .line 277
    or-int/2addr v3, v4

    .line 280
    add-int/lit8 v4, v1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 277
    or-int/2addr v3, v4

    .line 276
    aput v3, v2, v0

    .line 281
    add-int/lit8 v1, v1, 0x3

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static convertIntToByteArray([I)[B
    .registers 7
    .parameter "rgb"

    .prologue
    .line 152
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x4

    new-array v0, v4, [B

    .line 153
    .local v0, data:[B
    const/4 v2, 0x0

    .line 154
    .local v2, j:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v4, p0

    if-lt v1, v4, :cond_b

    .line 163
    return-object v0

    .line 156
    :cond_b
    aget v3, p0, v1

    .line 157
    .local v3, v:I
    add-int/lit8 v4, v2, 0x0

    ushr-int/lit8 v5, v3, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 158
    add-int/lit8 v4, v2, 0x1

    ushr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 159
    add-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 160
    add-int/lit8 v4, v2, 0x3

    ushr-int/lit8 v5, v3, 0x0

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 161
    add-int/lit8 v2, v2, 0x4

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static convertRgbToByteArray([I)[B
    .registers 3
    .parameter "rgb"

    .prologue
    .line 228
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/xxx/yyy/ZipUtil;->convertRgbToByteArray([III)[B

    move-result-object v0

    return-object v0
.end method

.method public static convertRgbToByteArray([III)[B
    .registers 9
    .parameter "rgb"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 239
    mul-int/lit8 v4, p2, 0x3

    new-array v0, v4, [B

    .line 240
    .local v0, data:[B
    const/4 v2, 0x0

    .line 241
    .local v2, j:I
    move v1, p1

    .local v1, i:I
    :goto_6
    add-int v4, p1, p2

    if-lt v1, v4, :cond_b

    .line 250
    return-object v0

    .line 243
    :cond_b
    aget v3, p0, v1

    .line 244
    .local v3, v:I
    add-int/lit8 v4, v2, 0x0

    ushr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 245
    add-int/lit8 v4, v2, 0x1

    ushr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 247
    add-int/lit8 v4, v2, 0x2

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 248
    add-int/lit8 v2, v2, 0x3

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static decompress([B)[B
    .registers 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "simple decompress"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xxx/yyy/ZipUtil;->decompress([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decompress([BI)[B
    .registers 11
    .parameter "data"
    .parameter "compressionType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x400

    .line 68
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "simple decompress, creating new GZipInputStream"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    new-array v2, v7, [B

    .line 72
    .local v2, tmp:[B
    new-instance v3, Lcom/xxx/yyy/GZipInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v5, 0x1

    invoke-direct {v3, v4, v7, p1, v5}, Lcom/xxx/yyy/GZipInputStream;-><init>(Ljava/io/InputStream;IIZ)V

    .line 74
    .local v3, zipInputStream:Lcom/xxx/yyy/GZipInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 76
    .local v0, bout:Ljava/io/ByteArrayOutputStream;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "now reading from GZipInputStream and writing to ByteArrayOutputStream"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    :goto_23
    invoke-virtual {v3, v2, v8, v7}, Lcom/xxx/yyy/GZipInputStream;->read([BII)I

    move-result v1

    .local v1, read:I
    if-gtz v1, :cond_2e

    .line 84
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 80
    :cond_2e
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "read="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, v2, v8, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_23
.end method

.method public static decompressIntArray([B)[I
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xxx/yyy/ZipUtil;->decompress([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/xxx/yyy/ZipUtil;->convertByteToIntArray([B)[I

    move-result-object v0

    return-object v0
.end method

.method public static decompressRgbArray([B)[I
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xxx/yyy/ZipUtil;->decompress([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/xxx/yyy/ZipUtil;->convertByteToRgbArray([B)[I

    move-result-object v0

    return-object v0
.end method
