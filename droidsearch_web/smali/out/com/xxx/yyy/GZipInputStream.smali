.class public Lcom/xxx/yyy/GZipInputStream;
.super Ljava/io/InputStream;
.source "GZipInputStream.java"


# static fields
.field static final BL:B = 0x8t

.field private static final EXPECTING_CHECK:B = 0x2t

.field private static final EXPECTING_DATA:B = 0x1t

.field private static final EXPECTING_HEADER:B = 0x0t

.field private static final FINISHED:B = 0x3t

.field public static final TYPE_DEFLATE:I = 0x0

.field public static final TYPE_GZIP:I = 0x1


# instance fields
.field private B0len:I

.field private BFINAL:Z

.field private BTYPE:I

.field private allPocessed:J

.field private buffsize:I

.field private crc32:I

.field private crc32Table:[I

.field distHuffTree:[S

.field private hash:Z

.field huffmanTree:[S

.field private inStream:Ljava/io/InputStream;

.field private inStreamEnded:Z

.field lastEnd:I

.field outBuff:[B

.field outEnd:I

.field outStart:I

.field private pProcessed:I

.field smallCodeBuffer:[J

.field private status:B

.field tmpRef:[B

.field private type:I

.field private validData:Z

.field private window:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IIZ)V
    .registers 9
    .parameter "inputStream"
    .parameter "size"
    .parameter "compressionType"
    .parameter "hash"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 130
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 73
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xxx/yyy/GZipInputStream;->crc32Table:[I

    .line 82
    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xxx/yyy/GZipInputStream;->window:[B

    .line 83
    iput v3, p0, Lcom/xxx/yyy/GZipInputStream;->pProcessed:I

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xxx/yyy/GZipInputStream;->allPocessed:J

    .line 88
    iput v3, p0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    .line 89
    iput v3, p0, Lcom/xxx/yyy/GZipInputStream;->lastEnd:I

    .line 90
    iput v3, p0, Lcom/xxx/yyy/GZipInputStream;->outStart:I

    .line 94
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    .line 617
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xxx/yyy/GZipInputStream;->tmpRef:[B

    .line 134
    iput-object p1, p0, Lcom/xxx/yyy/GZipInputStream;->inStream:Ljava/io/InputStream;

    .line 136
    iput-boolean v3, p0, Lcom/xxx/yyy/GZipInputStream;->inStreamEnded:Z

    .line 137
    iput-byte v3, p0, Lcom/xxx/yyy/GZipInputStream;->status:B

    .line 139
    iput-boolean p4, p0, Lcom/xxx/yyy/GZipInputStream;->hash:Z

    .line 140
    iput p3, p0, Lcom/xxx/yyy/GZipInputStream;->type:I

    .line 142
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    .line 143
    const/16 v0, 0x480

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/xxx/yyy/GZipInputStream;->huffmanTree:[S

    .line 146
    const/16 v0, 0x80

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/xxx/yyy/GZipInputStream;->distHuffTree:[S

    .line 148
    iput p2, p0, Lcom/xxx/yyy/GZipInputStream;->buffsize:I

    .line 149
    add-int/lit16 v0, p2, 0x12c

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xxx/yyy/GZipInputStream;->outBuff:[B

    .line 151
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "creating outbuff, size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual lenth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xxx/yyy/GZipInputStream;->outBuff:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    iget v0, p0, Lcom/xxx/yyy/GZipInputStream;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_73

    .line 154
    invoke-static {p1}, Lcom/xxx/yyy/ZipHelper;->skipheader(Ljava/io/InputStream;)V

    .line 157
    :cond_73
    iput v3, p0, Lcom/xxx/yyy/GZipInputStream;->crc32:I

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .registers 5
    .parameter "inputStream"
    .parameter "compressionType"
    .parameter "hash"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const/16 v0, 0x400

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/xxx/yyy/GZipInputStream;-><init>(Ljava/io/InputStream;IIZ)V

    .line 117
    return-void
.end method

.method private copyFromWindow(II[BI)V
    .registers 9
    .parameter "start"
    .parameter "len"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 180
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "copyFromWindow(start="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dest.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", destoff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - window.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xxx/yyy/GZipInputStream;->window:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    add-int v0, p1, p2

    iget-object v1, p0, Lcom/xxx/yyy/GZipInputStream;->window:[B

    array-length v1, v1

    if-ge v0, v1, :cond_56

    .line 182
    iget-object v0, p0, Lcom/xxx/yyy/GZipInputStream;->window:[B

    add-int/lit8 v1, p4, 0x0

    invoke-static {v0, p1, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    :goto_4e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "end of copyFromWindow"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    return-void

    .line 184
    :cond_56
    iget-object v0, p0, Lcom/xxx/yyy/GZipInputStream;->window:[B

    add-int/lit8 v1, p4, 0x0

    iget-object v2, p0, Lcom/xxx/yyy/GZipInputStream;->window:[B

    array-length v2, v2

    sub-int/2addr v2, p1

    invoke-static {v0, p1, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget-object v0, p0, Lcom/xxx/yyy/GZipInputStream;->window:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xxx/yyy/GZipInputStream;->window:[B

    array-length v2, v2

    sub-int/2addr v2, p1

    add-int/2addr v2, p4

    iget-object v3, p0, Lcom/xxx/yyy/GZipInputStream;->window:[B

    array-length v3, v3

    sub-int/2addr v3, p1

    sub-int v3, p2, v3

    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4e
.end method

.method private copyIntoWindow(II[BI)V
    .registers 9
    .parameter "start"
    .parameter "len"
    .parameter "src"
    .parameter "srcOff"

    .prologue
    .line 193
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "copyIntoWindow()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    add-int v0, p2, p1

    iget-object v1, p0, Lcom/xxx/yyy/GZipInputStream;->window:[B

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 195
    iget-object v0, p0, Lcom/xxx/yyy/GZipInputStream;->window:[B

    invoke-static {p3, p4, v0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    :goto_13
    return-void

    .line 197
    :cond_14
    iget-object v0, p0, Lcom/xxx/yyy/GZipInputStream;->window:[B

    iget-object v1, p0, Lcom/xxx/yyy/GZipInputStream;->window:[B

    array-length v1, v1

    sub-int/2addr v1, p1

    invoke-static {p3, p4, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iget-object v0, p0, Lcom/xxx/yyy/GZipInputStream;->window:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    add-int/2addr v0, p4

    iget-object v1, p0, Lcom/xxx/yyy/GZipInputStream;->window:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xxx/yyy/GZipInputStream;->window:[B

    array-length v3, v3

    sub-int/2addr v3, p1

    sub-int v3, p2, v3

    invoke-static {p3, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_13
.end method

.method private inflate()V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "inflate - outbuff.length="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->outBuff:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    const/16 v16, 0x0

    .line 223
    .local v16, val:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->window:[B

    move-object v13, v0

    .line 224
    .local v13, myWindow:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->outBuff:[B

    move-object v12, v0

    .line 227
    .local v12, myOutBuff:[B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outStart:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outStart:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object v0, v12

    move/from16 v1, v17

    move-object v2, v12

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outStart:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    .line 229
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/GZipInputStream;->outStart:I

    .line 231
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/GZipInputStream;->lastEnd:I

    .line 233
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->B0len:I

    move/from16 v17, v0

    if-nez v17, :cond_8f

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-wide v17, v17, v18

    const-wide/16 v19, 0xf

    cmp-long v17, v17, v19

    if-gez v17, :cond_8f

    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/xxx/yyy/GZipInputStream;->refillSmallCodeBuffer()V

    .line 241
    :cond_8f
    move-object v0, v12

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    const/16 v18, 0x12c

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_c9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-wide v17, v17, v18

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-gtz v17, :cond_bb

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->B0len:I

    move/from16 v17, v0

    if-lez v17, :cond_c9

    :cond_bb
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/xxx/yyy/GZipInputStream;->status:B

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_140

    .line 397
    :cond_c9
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/xxx/yyy/GZipInputStream;->status:B

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13f

    .line 398
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xxx/yyy/GZipInputStream;->allPocessed:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->lastEnd:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    const-wide v19, 0xffffffffL

    and-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/xxx/yyy/GZipInputStream;->allPocessed:J

    .line 399
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xxx/yyy/GZipInputStream;->hash:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13f

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->crc32Table:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->crc32:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->lastEnd:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->lastEnd:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v12

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xxx/yyy/ZipHelper;->crc32([II[BII)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/GZipInputStream;->crc32:I

    .line 405
    :cond_13f
    return-void

    .line 244
    :cond_140
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/xxx/yyy/GZipInputStream;->status:B

    move/from16 v17, v0

    if-nez v17, :cond_14b

    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/xxx/yyy/GZipInputStream;->processHeader()V

    .line 249
    :cond_14b
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/xxx/yyy/GZipInputStream;->status:B

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1e6

    .line 251
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->BTYPE:I

    move/from16 v17, v0

    if-nez v17, :cond_368

    .line 253
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->B0len:I

    move/from16 v17, v0

    if-lez v17, :cond_33a

    .line 255
    move-object v0, v12

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->B0len:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_32a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->B0len:I

    move/from16 v17, v0

    move/from16 v9, v17

    .line 259
    .local v9, copyBytes:I
    :goto_189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->inStream:Ljava/io/InputStream;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move-object v1, v12

    move/from16 v2, v18

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    .line 260
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->pProcessed:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v9

    move-object v3, v12

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xxx/yyy/GZipInputStream;->copyIntoWindow(II[BI)V

    .line 262
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v17, v0

    add-int v17, v17, v9

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    .line 263
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->pProcessed:I

    move/from16 v17, v0

    add-int v17, v17, v9

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x7fff

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/GZipInputStream;->pProcessed:I

    .line 265
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->B0len:I

    move/from16 v17, v0

    sub-int v17, v17, v9

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/GZipInputStream;->B0len:I

    .line 366
    .end local v9           #copyBytes:I
    :cond_1e6
    :goto_1e6
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/xxx/yyy/GZipInputStream;->status:B

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8f

    .line 369
    const/16 v17, 0x3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/xxx/yyy/GZipInputStream;->status:B

    .line 371
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xxx/yyy/GZipInputStream;->allPocessed:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->lastEnd:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    const-wide v19, 0xffffffffL

    and-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/xxx/yyy/GZipInputStream;->allPocessed:J

    .line 372
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xxx/yyy/GZipInputStream;->hash:Z

    move/from16 v17, v0

    if-eqz v17, :cond_264

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->crc32Table:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->crc32:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->lastEnd:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->lastEnd:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v12

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xxx/yyy/ZipHelper;->crc32([II[BII)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/GZipInputStream;->crc32:I

    .line 378
    :cond_264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-wide v17, v17, v18

    const-wide/16 v19, 0x7

    and-long v17, v17, v19

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    .line 379
    const-wide/16 v17, 0x8

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v17

    const-wide/16 v18, 0x8

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v18

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    const-wide/16 v18, 0x8

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v18

    shl-int/lit8 v18, v18, 0x10

    or-int v17, v17, v18

    const-wide/16 v18, 0x8

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v18

    shl-int/lit8 v18, v18, 0x18

    or-int v6, v17, v18

    .line 380
    .local v6, cCrc:I
    const-wide/16 v17, 0x8

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v17

    const-wide/16 v18, 0x8

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v18

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    const-wide/16 v18, 0x8

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v18

    shl-int/lit8 v18, v18, 0x10

    or-int v17, v17, v18

    const-wide/16 v18, 0x8

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v18

    shl-int/lit8 v18, v18, 0x18

    or-int v10, v17, v18

    .line 382
    .local v10, iSize:I
    move v0, v10

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xxx/yyy/GZipInputStream;->allPocessed:J

    move-wide/from16 v19, v0

    cmp-long v17, v17, v19

    if-nez v17, :cond_531

    const/16 v17, 0x1

    :goto_2f1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/xxx/yyy/GZipInputStream;->validData:Z

    .line 383
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xxx/yyy/GZipInputStream;->hash:Z

    move/from16 v17, v0

    if-eqz v17, :cond_31a

    .line 384
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xxx/yyy/GZipInputStream;->validData:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->crc32:I

    move/from16 v18, v0

    move/from16 v0, v18

    move v1, v6

    if-ne v0, v1, :cond_535

    const/16 v18, 0x1

    :goto_312
    and-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/xxx/yyy/GZipInputStream;->validData:Z

    .line 387
    :cond_31a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xxx/yyy/GZipInputStream;->validData:Z

    move/from16 v17, v0

    if-nez v17, :cond_8f

    .line 389
    new-instance v17, Ljava/io/IOException;

    const-string v18, "2"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 255
    .end local v6           #cCrc:I
    .end local v10           #iSize:I
    :cond_32a
    move-object v0, v12

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v9, v17

    goto/16 :goto_189

    .line 268
    :cond_33a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xxx/yyy/GZipInputStream;->BFINAL:Z

    move/from16 v17, v0

    if-eqz v17, :cond_35f

    .line 269
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/xxx/yyy/GZipInputStream;->status:B

    .line 273
    :goto_34a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-wide v17, v17, v18

    const-wide/16 v19, 0xf

    cmp-long v17, v17, v19

    if-gez v17, :cond_1e6

    .line 274
    invoke-direct/range {p0 .. p0}, Lcom/xxx/yyy/GZipInputStream;->refillSmallCodeBuffer()V

    goto/16 :goto_1e6

    .line 271
    :cond_35f
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/xxx/yyy/GZipInputStream;->status:B

    goto :goto_34a

    .line 281
    :cond_368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-wide v17, v17, v18

    const-wide/16 v19, 0xf

    cmp-long v17, v17, v19

    if-gez v17, :cond_37b

    .line 282
    invoke-direct/range {p0 .. p0}, Lcom/xxx/yyy/GZipInputStream;->refillSmallCodeBuffer()V

    .line 285
    :cond_37b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->huffmanTree:[S

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/xxx/yyy/ZipHelper;->deHuffNext([J[S)I

    move-result v16

    .line 289
    const/16 v17, 0x100

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3e4

    .line 292
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->pProcessed:I

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v13, v17

    .line 293
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->pProcessed:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x7fff

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/GZipInputStream;->pProcessed:I

    .line 295
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v12, v17

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    .line 361
    :goto_3cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-wide v17, v17, v18

    const-wide/16 v19, 0xf

    cmp-long v17, v17, v19

    if-gez v17, :cond_1e6

    .line 362
    invoke-direct/range {p0 .. p0}, Lcom/xxx/yyy/GZipInputStream;->refillSmallCodeBuffer()V

    goto/16 :goto_1e6

    .line 300
    :cond_3e4
    const/16 v17, 0x100

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_515

    .line 301
    const/16 v17, 0x11d

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_3fc

    .line 303
    new-instance v17, Ljava/io/IOException;

    const-string v18, "1"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 310
    :cond_3fc
    sget-object v17, Lcom/xxx/yyy/ZipHelper;->LENGTH_CODE:[I

    const/16 v18, 0x101

    sub-int v18, v16, v18

    shl-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v7

    .line 312
    .local v7, cLen:I
    sget-object v17, Lcom/xxx/yyy/ZipHelper;->LENGTH_CODE:[I

    const/16 v18, 0x101

    sub-int v18, v16, v18

    shl-int/lit8 v18, v18, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    add-int v7, v7, v17

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-wide v17, v17, v18

    const-wide/16 v19, 0xf

    cmp-long v17, v17, v19

    if-gez v17, :cond_434

    .line 317
    invoke-direct/range {p0 .. p0}, Lcom/xxx/yyy/GZipInputStream;->refillSmallCodeBuffer()V

    .line 320
    :cond_434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->distHuffTree:[S

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/xxx/yyy/ZipHelper;->deHuffNext([J[S)I

    move-result v16

    .line 323
    sget-object v17, Lcom/xxx/yyy/ZipHelper;->DISTANCE_CODE:[I

    shl-int/lit8 v18, v16, 0x1

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v8

    .line 325
    .local v8, cPos:I
    sget-object v17, Lcom/xxx/yyy/ZipHelper;->DISTANCE_CODE:[I

    shl-int/lit8 v18, v16, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    add-int v8, v8, v17

    .line 331
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->pProcessed:I

    move/from16 v17, v0

    sub-int v5, v17, v8

    .line 332
    .local v5, aPos:I
    if-gez v5, :cond_4c5

    move-object v0, v13

    array-length v0, v0

    move/from16 v17, v0

    :goto_46f
    add-int v5, v5, v17

    .line 335
    div-int v15, v7, v8

    .line 336
    .local v15, rep:I
    mul-int v17, v8, v15

    sub-int v14, v7, v17

    .line 338
    .local v14, rem:I
    const/4 v11, 0x0

    .local v11, j:I
    :goto_478
    if-lt v11, v15, :cond_4c8

    .line 347
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v14

    move-object v3, v12

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xxx/yyy/GZipInputStream;->copyFromWindow(II[BI)V

    .line 348
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->pProcessed:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v14

    move-object v3, v12

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xxx/yyy/GZipInputStream;->copyIntoWindow(II[BI)V

    .line 349
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v17, v0

    add-int v17, v17, v14

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    .line 350
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->pProcessed:I

    move/from16 v17, v0

    add-int v17, v17, v14

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x7fff

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/GZipInputStream;->pProcessed:I

    goto/16 :goto_3cf

    .line 332
    .end local v11           #j:I
    .end local v14           #rem:I
    .end local v15           #rep:I
    :cond_4c5
    const/16 v17, 0x0

    goto :goto_46f

    .line 340
    .restart local v11       #j:I
    .restart local v14       #rem:I
    .restart local v15       #rep:I
    :cond_4c8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v8

    move-object v3, v12

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xxx/yyy/GZipInputStream;->copyFromWindow(II[BI)V

    .line 341
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->pProcessed:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v8

    move-object v3, v12

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xxx/yyy/GZipInputStream;->copyIntoWindow(II[BI)V

    .line 342
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v17, v0

    add-int v17, v17, v8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    .line 343
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->pProcessed:I

    move/from16 v17, v0

    add-int v17, v17, v8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x7fff

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/GZipInputStream;->pProcessed:I

    .line 338
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_478

    .line 355
    .end local v5           #aPos:I
    .end local v7           #cLen:I
    .end local v8           #cPos:I
    .end local v11           #j:I
    .end local v14           #rem:I
    .end local v15           #rep:I
    :cond_515
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xxx/yyy/GZipInputStream;->BFINAL:Z

    move/from16 v17, v0

    if-eqz v17, :cond_527

    .line 356
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/xxx/yyy/GZipInputStream;->status:B

    goto/16 :goto_3cf

    .line 358
    :cond_527
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/xxx/yyy/GZipInputStream;->status:B

    goto/16 :goto_3cf

    .line 382
    .restart local v6       #cCrc:I
    .restart local v10       #iSize:I
    :cond_531
    const/16 v17, 0x0

    goto/16 :goto_2f1

    .line 384
    :cond_535
    const/16 v18, 0x0

    goto/16 :goto_312
.end method

.method private popSmallBuffer(J)I
    .registers 10
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 598
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "popSmallBuffer("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 599
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_24

    move v1, v6

    .line 609
    :goto_23
    return v1

    .line 601
    :cond_24
    iget-object v1, p0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    aget-wide v1, v1, v5

    cmp-long v1, v1, p1

    if-gez v1, :cond_2f

    .line 602
    invoke-direct {p0}, Lcom/xxx/yyy/GZipInputStream;->refillSmallCodeBuffer()V

    .line 605
    :cond_2f
    iget-object v1, p0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    aget-wide v1, v1, v6

    long-to-int v3, p1

    shl-int v3, v5, v3

    sub-int/2addr v3, v5

    int-to-long v3, v3

    and-long/2addr v1, v3

    long-to-int v0, v1

    .line 606
    .local v0, ret:I
    iget-object v1, p0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    aget-wide v2, v1, v6

    long-to-int v4, p1

    ushr-long/2addr v2, v4

    aput-wide v2, v1, v6

    .line 607
    iget-object v1, p0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    aget-wide v2, v1, v5

    sub-long/2addr v2, p1

    aput-wide v2, v1, v5

    move v1, v0

    .line 609
    goto :goto_23
.end method

.method private processHeader()V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "processHeader()"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 416
    const/16 v23, 0x1e

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object v7, v0

    .line 417
    .local v7, distHuffCode:[I
    const/16 v23, 0x1e

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object v9, v0

    .line 418
    .local v9, distHuffData:[I
    const/16 v23, 0x1e

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object v8, v0

    .line 420
    .local v8, distHuffCodeLength:[B
    const/16 v23, 0x11e

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object v10, v0

    .line 421
    .local v10, huffmanCode:[I
    const/16 v23, 0x11e

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object v12, v0

    .line 422
    .local v12, huffmanData:[I
    const/16 v23, 0x11e

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object v11, v0

    .line 424
    .local v11, huffmanCodeLength:[B
    const-wide/16 v23, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6f

    const/16 v23, 0x1

    :goto_45
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/xxx/yyy/GZipInputStream;->BFINAL:Z

    .line 426
    const-wide/16 v23, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/GZipInputStream;->BTYPE:I

    .line 428
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->BTYPE:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_72

    .line 429
    new-instance v23, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v23

    .line 424
    :cond_6f
    const/16 v23, 0x0

    goto :goto_45

    .line 430
    :cond_72
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->BTYPE:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d4

    .line 433
    invoke-static {v10, v11, v7, v8}, Lcom/xxx/yyy/ZipHelper;->genFixedTree([I[B[I[B)V

    .line 434
    const/4 v13, 0x0

    .local v13, i:I
    :goto_84
    const/16 v23, 0x11e

    move v0, v13

    move/from16 v1, v23

    if-lt v0, v1, :cond_ca

    .line 437
    const/4 v13, 0x0

    :goto_8c
    const/16 v23, 0x1e

    move v0, v13

    move/from16 v1, v23

    if-lt v0, v1, :cond_cf

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->huffmanTree:[S

    move-object/from16 v23, v0

    move-object v0, v10

    move-object v1, v11

    move-object v2, v12

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/xxx/yyy/ZipHelper;->convertTable2Tree([I[B[I[S)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->distHuffTree:[S

    move-object/from16 v23, v0

    move-object v0, v7

    move-object v1, v8

    move-object v2, v9

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/xxx/yyy/ZipHelper;->convertTable2Tree([I[B[I[S)V

    .line 564
    .end local v13           #i:I
    :cond_af
    :goto_af
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/xxx/yyy/GZipInputStream;->status:B

    .line 566
    const/4 v7, 0x0

    check-cast v7, [I

    .line 567
    const/4 v9, 0x0

    check-cast v9, [I

    .line 568
    const/4 v8, 0x0

    check-cast v8, [B

    .line 570
    const/4 v11, 0x0

    check-cast v11, [B

    .line 571
    const/4 v10, 0x0

    check-cast v10, [I

    .line 572
    const/4 v12, 0x0

    check-cast v12, [I

    .line 573
    return-void

    .line 435
    .restart local v13       #i:I
    :cond_ca
    aput v13, v12, v13

    .line 434
    add-int/lit8 v13, v13, 0x1

    goto :goto_84

    .line 438
    :cond_cf
    aput v13, v9, v13

    .line 437
    add-int/lit8 v13, v13, 0x1

    goto :goto_8c

    .line 447
    .end local v13           #i:I
    :cond_d4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->BTYPE:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_341

    .line 452
    const-wide/16 v23, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v6

    .line 453
    .local v6, HLIT:I
    const-wide/16 v23, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v5

    .line 454
    .local v5, HDIST:I
    const-wide/16 v23, 0x4

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v4

    .line 457
    .local v4, HCLEN:I
    const/16 v23, 0x13

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v23, 0x0

    const/16 v24, 0x10

    aput v24, v19, v23

    const/16 v23, 0x1

    const/16 v24, 0x11

    aput v24, v19, v23

    const/16 v23, 0x2

    const/16 v24, 0x12

    aput v24, v19, v23

    const/16 v23, 0x4

    const/16 v24, 0x8

    aput v24, v19, v23

    const/16 v23, 0x5

    const/16 v24, 0x7

    aput v24, v19, v23

    const/16 v23, 0x6

    const/16 v24, 0x9

    aput v24, v19, v23

    const/16 v23, 0x7

    const/16 v24, 0x6

    aput v24, v19, v23

    const/16 v23, 0x8

    const/16 v24, 0xa

    aput v24, v19, v23

    const/16 v23, 0x9

    const/16 v24, 0x5

    aput v24, v19, v23

    const/16 v23, 0xa

    const/16 v24, 0xb

    aput v24, v19, v23

    const/16 v23, 0xb

    const/16 v24, 0x4

    aput v24, v19, v23

    const/16 v23, 0xc

    const/16 v24, 0xc

    aput v24, v19, v23

    const/16 v23, 0xd

    const/16 v24, 0x3

    aput v24, v19, v23

    const/16 v23, 0xe

    const/16 v24, 0xd

    aput v24, v19, v23

    const/16 v23, 0xf

    const/16 v24, 0x2

    aput v24, v19, v23

    const/16 v23, 0x10

    const/16 v24, 0xe

    aput v24, v19, v23

    const/16 v23, 0x11

    const/16 v24, 0x1

    aput v24, v19, v23

    const/16 v23, 0x12

    const/16 v24, 0xf

    aput v24, v19, v23

    .line 458
    .local v19, miniHuffData:[I
    const/16 v23, 0x13

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    aput v24, v21, v23

    const/16 v23, 0x2

    const/16 v24, 0x2

    aput v24, v21, v23

    const/16 v23, 0x3

    const/16 v24, 0x3

    aput v24, v21, v23

    const/16 v23, 0x4

    const/16 v24, 0x4

    aput v24, v21, v23

    const/16 v23, 0x5

    const/16 v24, 0x5

    aput v24, v21, v23

    const/16 v23, 0x6

    const/16 v24, 0x6

    aput v24, v21, v23

    const/16 v23, 0x7

    const/16 v24, 0x7

    aput v24, v21, v23

    const/16 v23, 0x8

    const/16 v24, 0x8

    aput v24, v21, v23

    const/16 v23, 0x9

    const/16 v24, 0x9

    aput v24, v21, v23

    const/16 v23, 0xa

    const/16 v24, 0xa

    aput v24, v21, v23

    const/16 v23, 0xb

    const/16 v24, 0xb

    aput v24, v21, v23

    const/16 v23, 0xc

    const/16 v24, 0xc

    aput v24, v21, v23

    const/16 v23, 0xd

    const/16 v24, 0xd

    aput v24, v21, v23

    const/16 v23, 0xe

    const/16 v24, 0xe

    aput v24, v21, v23

    const/16 v23, 0xf

    const/16 v24, 0xf

    aput v24, v21, v23

    const/16 v23, 0x10

    const/16 v24, 0x10

    aput v24, v21, v23

    const/16 v23, 0x11

    const/16 v24, 0x11

    aput v24, v21, v23

    const/16 v23, 0x12

    const/16 v24, 0x12

    aput v24, v21, v23

    .line 460
    .local v21, seq:[I
    const/16 v23, 0x13

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 461
    .local v18, miniHuffCodeLength:[B
    const/16 v23, 0x13

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 464
    .local v17, miniHuffCode:[I
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_1f9
    add-int/lit8 v23, v4, 0x4

    move v0, v13

    move/from16 v1, v23

    if-lt v0, v1, :cond_27c

    .line 468
    invoke-static/range {v17 .. v18}, Lcom/xxx/yyy/ZipHelper;->genHuffTree([I[B)V

    .line 469
    invoke-static/range {v17 .. v18}, Lcom/xxx/yyy/ZipHelper;->revHuffTree([I[B)V

    .line 471
    const/16 v23, 0x4c

    move/from16 v0, v23

    new-array v0, v0, [S

    move-object/from16 v20, v0

    .line 472
    .local v20, miniTree:[S
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/xxx/yyy/ZipHelper;->convertTable2Tree([I[B[I[S)V

    .line 475
    const/4 v13, 0x0

    :goto_21a
    move-object v0, v11

    array-length v0, v0

    move/from16 v23, v0

    move v0, v13

    move/from16 v1, v23

    if-lt v0, v1, :cond_293

    .line 478
    const/4 v13, 0x0

    :goto_224
    move-object v0, v8

    array-length v0, v0

    move/from16 v23, v0

    move v0, v13

    move/from16 v1, v23

    if-lt v0, v1, :cond_29a

    .line 481
    const/16 v16, 0x0

    .line 482
    .local v16, lastVal:B
    const/4 v14, 0x0

    .local v14, j:I
    :cond_230
    move v0, v6

    add-int/lit16 v0, v0, 0x101

    move/from16 v23, v0

    add-int v23, v23, v5

    add-int/lit8 v23, v23, 0x1

    move v0, v14

    move/from16 v1, v23

    if-lt v0, v1, :cond_2a1

    .line 517
    invoke-static {v10, v11}, Lcom/xxx/yyy/ZipHelper;->genHuffTree([I[B)V

    .line 518
    const/4 v13, 0x0

    :goto_242
    move-object v0, v12

    array-length v0, v0

    move/from16 v23, v0

    move v0, v13

    move/from16 v1, v23

    if-lt v0, v1, :cond_335

    .line 522
    invoke-static {v10, v11}, Lcom/xxx/yyy/ZipHelper;->revHuffTree([I[B)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->huffmanTree:[S

    move-object/from16 v23, v0

    move-object v0, v10

    move-object v1, v11

    move-object v2, v12

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/xxx/yyy/ZipHelper;->convertTable2Tree([I[B[I[S)V

    .line 528
    const/4 v14, 0x0

    :goto_25d
    move-object v0, v7

    array-length v0, v0

    move/from16 v23, v0

    move v0, v14

    move/from16 v1, v23

    if-lt v0, v1, :cond_33b

    .line 531
    invoke-static {v7, v8}, Lcom/xxx/yyy/ZipHelper;->genHuffTree([I[B)V

    .line 532
    invoke-static {v7, v8}, Lcom/xxx/yyy/ZipHelper;->revHuffTree([I[B)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->distHuffTree:[S

    move-object/from16 v23, v0

    move-object v0, v7

    move-object v1, v8

    move-object v2, v9

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/xxx/yyy/ZipHelper;->convertTable2Tree([I[B[I[S)V

    goto/16 :goto_af

    .line 465
    .end local v14           #j:I
    .end local v16           #lastVal:B
    .end local v20           #miniTree:[S
    :cond_27c
    aget v23, v19, v13

    const-wide/16 v24, 0x3

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v18, v23

    .line 464
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1f9

    .line 476
    .restart local v20       #miniTree:[S
    :cond_293
    const/16 v23, 0x0

    aput-byte v23, v11, v13

    .line 475
    add-int/lit8 v13, v13, 0x1

    goto :goto_21a

    .line 479
    :cond_29a
    const/16 v23, 0x0

    aput-byte v23, v8, v13

    .line 478
    add-int/lit8 v13, v13, 0x1

    goto :goto_224

    .line 484
    .restart local v14       #j:I
    .restart local v16       #lastVal:B
    :cond_2a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-wide v23, v23, v24

    const-wide/16 v25, 0xf

    cmp-long v23, v23, v25

    if-gez v23, :cond_2b4

    .line 485
    invoke-direct/range {p0 .. p0}, Lcom/xxx/yyy/GZipInputStream;->refillSmallCodeBuffer()V

    .line 487
    :cond_2b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/xxx/yyy/ZipHelper;->deHuffNext([J[S)I

    move-result v22

    .line 490
    .local v22, val:I
    const/16 v23, 0x10

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2e8

    .line 491
    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v16, v0

    .line 492
    const/16 v22, 0x1

    .line 506
    :cond_2d1
    :goto_2d1
    const/4 v15, 0x0

    .local v15, k:I
    :goto_2d2
    move v0, v15

    move/from16 v1, v22

    if-ge v0, v1, :cond_230

    .line 507
    move v0, v6

    add-int/lit16 v0, v0, 0x101

    move/from16 v23, v0

    move v0, v14

    move/from16 v1, v23

    if-ge v0, v1, :cond_32b

    .line 508
    aput-byte v16, v11, v14

    .line 506
    :goto_2e3
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_2d2

    .line 495
    .end local v15           #k:I
    :cond_2e8
    const/16 v23, 0x10

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2fd

    .line 496
    const-wide/16 v23, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v23

    add-int/lit8 v22, v23, 0x3

    goto :goto_2d1

    .line 497
    :cond_2fd
    const/16 v23, 0x11

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_314

    .line 498
    const/16 v16, 0x0

    .line 499
    const-wide/16 v23, 0x3

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v23

    add-int/lit8 v22, v23, 0x3

    goto :goto_2d1

    .line 500
    :cond_314
    const/16 v23, 0x12

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2d1

    .line 501
    const/16 v16, 0x0

    .line 502
    const-wide/16 v23, 0x7

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v23

    add-int/lit8 v22, v23, 0xb

    goto :goto_2d1

    .line 510
    .restart local v15       #k:I
    :cond_32b
    move v0, v6

    add-int/lit16 v0, v0, 0x101

    move/from16 v23, v0

    sub-int v23, v14, v23

    aput-byte v16, v8, v23

    goto :goto_2e3

    .line 519
    .end local v15           #k:I
    .end local v22           #val:I
    :cond_335
    aput v13, v12, v13

    .line 518
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_242

    .line 529
    :cond_33b
    aput v14, v9, v14

    .line 528
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_25d

    .line 537
    .end local v4           #HCLEN:I
    .end local v5           #HDIST:I
    .end local v6           #HLIT:I
    .end local v13           #i:I
    .end local v14           #j:I
    .end local v16           #lastVal:B
    .end local v17           #miniHuffCode:[I
    .end local v18           #miniHuffCodeLength:[B
    .end local v19           #miniHuffData:[I
    .end local v20           #miniTree:[S
    .end local v21           #seq:[I
    :cond_341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-wide v23, v23, v24

    const-wide/16 v25, 0x7

    and-long v23, v23, v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    .line 540
    const-wide/16 v23, 0x8

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v23

    const-wide/16 v24, 0x8

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v24

    shl-int/lit8 v24, v24, 0x8

    or-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/GZipInputStream;->B0len:I

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-wide v23, v23, v24

    const-wide/16 v25, 0xf

    cmp-long v23, v23, v25

    if-gez v23, :cond_387

    .line 542
    invoke-direct/range {p0 .. p0}, Lcom/xxx/yyy/GZipInputStream;->refillSmallCodeBuffer()V

    .line 544
    :cond_387
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->B0len:I

    move/from16 v23, v0

    const-wide/16 v24, 0x8

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v24

    const-wide/16 v25, 0x8

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v25

    shl-int/lit8 v25, v25, 0x8

    or-int v24, v24, v25

    add-int v23, v23, v24

    const v24, 0xffff

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_41a

    .line 546
    new-instance v23, Ljava/io/IOException;

    const-string v24, "3"

    invoke-direct/range {v23 .. v24}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 552
    :cond_3b8
    const-wide/16 v23, 0x8

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipInputStream;->popSmallBuffer(J)I

    move-result v22

    .line 553
    .restart local v22       #val:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->window:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->pProcessed:I

    move/from16 v24, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 554
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->pProcessed:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x7fff

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/GZipInputStream;->pProcessed:I

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->outBuff:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v24, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 557
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    .line 559
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->B0len:I

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/GZipInputStream;->B0len:I

    .line 551
    .end local v22           #val:I
    :cond_41a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-wide v23, v23, v24

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-eqz v23, :cond_af

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/GZipInputStream;->B0len:I

    move/from16 v23, v0

    if-gtz v23, :cond_3b8

    goto/16 :goto_af
.end method

.method private refillSmallCodeBuffer()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 620
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "refillSmallCodeBuffer"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 623
    iget-boolean v3, p0, Lcom/xxx/yyy/GZipInputStream;->inStreamEnded:Z

    if-nez v3, :cond_2a

    .line 625
    iget-object v3, p0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    aget-wide v3, v3, v10

    div-long/2addr v3, v12

    sub-long v3, v12, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    long-to-int v2, v3

    .line 626
    .local v2, wanted:I
    iget-object v3, p0, Lcom/xxx/yyy/GZipInputStream;->inStream:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/xxx/yyy/GZipInputStream;->tmpRef:[B

    invoke-virtual {v3, v4, v11, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 628
    .local v0, count:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_27

    .line 629
    iput-boolean v10, p0, Lcom/xxx/yyy/GZipInputStream;->inStreamEnded:Z

    .line 632
    :cond_27
    const/4 v1, 0x0

    .local v1, i:I
    :goto_28
    if-lt v1, v0, :cond_2b

    .line 642
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #wanted:I
    :cond_2a
    return-void

    .line 633
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #wanted:I
    :cond_2b
    iget-object v3, p0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    aget-wide v4, v3, v11

    const-wide/16 v6, 0xff

    iget-object v8, p0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    aget-wide v8, v8, v10

    long-to-int v8, v8

    shl-long/2addr v6, v8

    const-wide/16 v8, -0x1

    xor-long/2addr v6, v8

    and-long/2addr v4, v6

    aput-wide v4, v3, v11

    .line 634
    iget-object v3, p0, Lcom/xxx/yyy/GZipInputStream;->tmpRef:[B

    aget-byte v3, v3, v1

    if-gez v3, :cond_61

    .line 635
    iget-object v3, p0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    aget-wide v4, v3, v11

    iget-object v6, p0, Lcom/xxx/yyy/GZipInputStream;->tmpRef:[B

    aget-byte v6, v6, v1

    add-int/lit16 v6, v6, 0x100

    int-to-long v6, v6

    iget-object v8, p0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    aget-wide v8, v8, v10

    long-to-int v8, v8

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, v3, v11

    .line 639
    :goto_57
    iget-object v3, p0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    aget-wide v4, v3, v10

    add-long/2addr v4, v12

    aput-wide v4, v3, v10

    .line 632
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 637
    :cond_61
    iget-object v3, p0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    aget-wide v4, v3, v11

    iget-object v6, p0, Lcom/xxx/yyy/GZipInputStream;->tmpRef:[B

    aget-byte v6, v6, v1

    int-to-long v6, v6

    iget-object v8, p0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    aget-wide v8, v8, v10

    long-to-int v8, v8

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, v3, v11

    goto :goto_57
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "available()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 653
    iget v0, p0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    iget v1, p0, Lcom/xxx/yyy/GZipInputStream;->outStart:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/xxx/yyy/GZipInputStream;->outBuff:[B

    array-length v1, v1

    const/16 v2, 0x12c

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_30

    .line 654
    invoke-direct {p0}, Lcom/xxx/yyy/GZipInputStream;->inflate()V

    .line 656
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "inflated to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    iget v3, p0, Lcom/xxx/yyy/GZipInputStream;->outStart:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 658
    :cond_30
    iget v0, p0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    iget v1, p0, Lcom/xxx/yyy/GZipInputStream;->outStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lcom/xxx/yyy/GZipInputStream;->inStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 164
    iput-object v1, p0, Lcom/xxx/yyy/GZipInputStream;->smallCodeBuffer:[J

    .line 166
    iput-object v1, p0, Lcom/xxx/yyy/GZipInputStream;->huffmanTree:[S

    .line 167
    iput-object v1, p0, Lcom/xxx/yyy/GZipInputStream;->distHuffTree:[S

    .line 168
    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 675
    iget v0, p0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    iget v1, p0, Lcom/xxx/yyy/GZipInputStream;->outStart:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_a

    .line 676
    invoke-direct {p0}, Lcom/xxx/yyy/GZipInputStream;->inflate()V

    .line 678
    :cond_a
    iget v0, p0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    iget v1, p0, Lcom/xxx/yyy/GZipInputStream;->outStart:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/xxx/yyy/GZipInputStream;->inStreamEnded:Z

    if-eqz v0, :cond_17

    .line 680
    const/4 v0, -0x1

    .line 682
    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/xxx/yyy/GZipInputStream;->outBuff:[B

    iget v1, p0, Lcom/xxx/yyy/GZipInputStream;->outStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/xxx/yyy/GZipInputStream;->outStart:I

    aget-byte v0, v0, v1

    add-int/lit16 v0, v0, 0x100

    and-int/lit16 v0, v0, 0xff

    goto :goto_16
.end method

.method public read([B)I
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 687
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/xxx/yyy/GZipInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 9
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "read[byte[],off,len)"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 697
    iget v2, p0, Lcom/xxx/yyy/GZipInputStream;->outEnd:I

    iget v3, p0, Lcom/xxx/yyy/GZipInputStream;->outStart:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/xxx/yyy/GZipInputStream;->outBuff:[B

    array-length v3, v3

    const/16 v4, 0x12c

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_17

    .line 698
    invoke-direct {p0}, Lcom/xxx/yyy/GZipInputStream;->inflate()V

    .line 702
    :cond_17
    invoke-virtual {p0}, Lcom/xxx/yyy/GZipInputStream;->available()I

    move-result v0

    .line 703
    .local v0, av:I
    if-le p3, v0, :cond_2e

    move v1, v0

    .line 707
    .local v1, copyBytes:I
    :goto_1e
    iget-object v2, p0, Lcom/xxx/yyy/GZipInputStream;->outBuff:[B

    iget v3, p0, Lcom/xxx/yyy/GZipInputStream;->outStart:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 709
    iget v2, p0, Lcom/xxx/yyy/GZipInputStream;->outStart:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/xxx/yyy/GZipInputStream;->outStart:I

    .line 712
    if-eqz v1, :cond_30

    move v2, v1

    .line 715
    :goto_2d
    return v2

    .end local v1           #copyBytes:I
    :cond_2e
    move v1, p3

    .line 703
    goto :goto_1e

    .line 715
    .restart local v1       #copyBytes:I
    :cond_30
    const/4 v2, -0x1

    goto :goto_2d
.end method

.method public skip(J)J
    .registers 9
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 663
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "skip("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 664
    const-wide/16 v1, 0x0

    .line 665
    .local v1, skipped:J
    iget v3, p0, Lcom/xxx/yyy/GZipInputStream;->buffsize:I

    new-array v0, v3, [B

    .line 667
    .local v0, b:[B
    :goto_20
    cmp-long v3, v1, p1

    if-gez v3, :cond_29

    iget-byte v3, p0, Lcom/xxx/yyy/GZipInputStream;->status:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2a

    .line 671
    :cond_29
    return-wide v1

    .line 668
    :cond_2a
    invoke-virtual {p0, v0}, Lcom/xxx/yyy/GZipInputStream;->read([B)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_20
.end method

.method public validData()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 583
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "validData()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 584
    invoke-direct {p0}, Lcom/xxx/yyy/GZipInputStream;->inflate()V

    .line 585
    iget-byte v0, p0, Lcom/xxx/yyy/GZipInputStream;->status:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    .line 586
    const/4 v0, -0x1

    .line 591
    :goto_10
    return v0

    .line 588
    :cond_11
    iget-boolean v0, p0, Lcom/xxx/yyy/GZipInputStream;->validData:Z

    if-eqz v0, :cond_17

    .line 589
    const/4 v0, 0x1

    goto :goto_10

    .line 591
    :cond_17
    const/4 v0, 0x0

    goto :goto_10
.end method
