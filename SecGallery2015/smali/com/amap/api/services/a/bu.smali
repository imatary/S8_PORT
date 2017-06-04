.class public Lcom/amap/api/services/a/bu;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DB.java"


# instance fields
.field private a:Lcom/amap/api/services/a/bo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/amap/api/services/a/bo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p5, p0, Lcom/amap/api/services/a/bu;->a:Lcom/amap/api/services/a/bo;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/bu;->a:Lcom/amap/api/services/a/bo;

    invoke-interface {v0, p1}, Lcom/amap/api/services/a/bo;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/bu;->a:Lcom/amap/api/services/a/bo;

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/api/services/a/bo;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
