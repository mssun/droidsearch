.class public Lcom/olivephone/filerw/ReadWrite;
.super Ljava/lang/Object;
.source "ReadWrite.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ReadSettings(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 36
    const/4 v3, 0x0

    .line 37
    .local v3, fIn:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 39
    .local v5, isr:Ljava/io/InputStreamReader;
    const v7, 0xfa000

    new-array v4, v7, [C

    .line 40
    .local v4, inputBuffer:[C
    const/4 v0, 0x0

    .line 43
    .local v0, data:Ljava/lang/String;
    :try_start_8
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 44
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_34
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_11} :catch_22

    .line 45
    .end local v5           #isr:Ljava/io/InputStreamReader;
    .local v6, isr:Ljava/io/InputStreamReader;
    :try_start_11
    invoke-virtual {v6, v4}, Ljava/io/InputStreamReader;->read([C)I

    .line 46
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([C)V
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_4a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_4d

    .line 51
    .end local v0           #data:Ljava/lang/String;
    .local v1, data:Ljava/lang/String;
    :try_start_19
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 52
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1f} :catch_42

    move-object v0, v1

    .end local v1           #data:Ljava/lang/String;
    .restart local v0       #data:Ljava/lang/String;
    move-object v5, v6

    .line 57
    .end local v6           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #isr:Ljava/io/InputStreamReader;
    :goto_21
    return-object v0

    .line 47
    :catch_22
    move-exception v7

    move-object v2, v7

    .line 48
    .local v2, e:Ljava/lang/Exception;
    :goto_24
    :try_start_24
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_34

    .line 51
    :try_start_27
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 52
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2d} :catch_2e

    goto :goto_21

    .line 53
    :catch_2e
    move-exception v7

    move-object v2, v7

    .line 54
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 49
    .end local v2           #e:Ljava/io/IOException;
    :catchall_34
    move-exception v7

    .line 51
    :goto_35
    :try_start_35
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 52
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3b} :catch_3c

    .line 56
    :goto_3b
    throw v7

    .line 53
    :catch_3c
    move-exception v8

    move-object v2, v8

    .line 54
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 53
    .end local v0           #data:Ljava/lang/String;
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #isr:Ljava/io/InputStreamReader;
    .restart local v1       #data:Ljava/lang/String;
    .restart local v6       #isr:Ljava/io/InputStreamReader;
    :catch_42
    move-exception v7

    move-object v2, v7

    .line 54
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .end local v1           #data:Ljava/lang/String;
    .restart local v0       #data:Ljava/lang/String;
    move-object v5, v6

    .end local v6           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #isr:Ljava/io/InputStreamReader;
    goto :goto_21

    .line 49
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #isr:Ljava/io/InputStreamReader;
    .restart local v6       #isr:Ljava/io/InputStreamReader;
    :catchall_4a
    move-exception v7

    move-object v5, v6

    .end local v6           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #isr:Ljava/io/InputStreamReader;
    goto :goto_35

    .line 47
    .end local v5           #isr:Ljava/io/InputStreamReader;
    .restart local v6       #isr:Ljava/io/InputStreamReader;
    :catch_4d
    move-exception v7

    move-object v2, v7

    move-object v5, v6

    .end local v6           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #isr:Ljava/io/InputStreamReader;
    goto :goto_24
.end method

.method public static WriteSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "context"
    .parameter "fileName"
    .parameter "data"

    .prologue
    .line 15
    const/4 v1, 0x0

    .line 16
    .local v1, fOut:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 18
    .local v2, osw:Ljava/io/OutputStreamWriter;
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 19
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_1a

    .line 20
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .local v3, osw:Ljava/io/OutputStreamWriter;
    :try_start_c
    invoke-virtual {v3, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_41
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_44

    .line 26
    :try_start_12
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 27
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_3a

    move-object v2, v3

    .line 32
    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    :goto_19
    return-void

    .line 22
    :catch_1a
    move-exception v4

    move-object v0, v4

    .line 23
    .local v0, e:Ljava/lang/Exception;
    :goto_1c
    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_2c

    .line 26
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 27
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_25} :catch_26

    goto :goto_19

    .line 28
    :catch_26
    move-exception v4

    move-object v0, v4

    .line 29
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 24
    .end local v0           #e:Ljava/io/IOException;
    :catchall_2c
    move-exception v4

    .line 26
    :goto_2d
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 27
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_33} :catch_34

    .line 31
    :goto_33
    throw v4

    .line 28
    :catch_34
    move-exception v5

    move-object v0, v5

    .line 29
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    .line 28
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    :catch_3a
    move-exception v4

    move-object v0, v4

    .line 29
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_19

    .line 24
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    :catchall_41
    move-exception v4

    move-object v2, v3

    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_2d

    .line 22
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    :catch_44
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_1c
.end method
