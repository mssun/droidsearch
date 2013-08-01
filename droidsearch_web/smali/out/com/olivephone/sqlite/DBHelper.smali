.class public Lcom/olivephone/sqlite/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "zsxh_db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final FIELD_ID:Ljava/lang/String; = "_id"

.field public static final FIELD_TEXT:Ljava/lang/String; = "zsxh_text"

.field public static final FIELD_TIME:Ljava/lang/String; = "zsxh_time"

.field public static final FIELD_URL:Ljava/lang/String; = "zsxh_url"

.field private static final TABLE_NAME:Ljava/lang/String; = "zsxh_table"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public delete(I)V
    .registers 7
    .parameter "id"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/olivephone/sqlite/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 63
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "_id =?"

    .line 64
    .local v1, where:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 65
    .local v2, whereValue:[Ljava/lang/String;
    const-string v3, "zsxh_table"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .registers 9
    .parameter "text"
    .parameter "url"
    .parameter "time"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/olivephone/sqlite/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 53
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 54
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "zsxh_text"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v3, "zsxh_url"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v3, "zsxh_time"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v3, "zsxh_table"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 58
    .local v2, row:Ljava/lang/Long;
    return-object v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 27
    const-string v0, "Create table zsxh_table(_id integer primary key autoincrement,zsxh_text TEXT,zsxh_url TEXT,zsxh_time TEXT)"

    .line 35
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 39
    const-string v0, "drop table if exists zsxh_table"

    .line 40
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/olivephone/sqlite/DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 42
    return-void
.end method

.method public select()Landroid/database/Cursor;
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/olivephone/sqlite/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 47
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "zsxh_table"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 48
    return-object v8
.end method

.method public update(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "id"
    .parameter "text"
    .parameter "url"
    .parameter "time"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/olivephone/sqlite/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 70
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "_id =?"

    .line 71
    .local v2, where:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 72
    .local v3, whereValue:[Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "zsxh_text"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v4, "zsxh_url"

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v4, "zsxh_time"

    invoke-virtual {v0, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v4, "zsxh_table"

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 77
    return-void
.end method
