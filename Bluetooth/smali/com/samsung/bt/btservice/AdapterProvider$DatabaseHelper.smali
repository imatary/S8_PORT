.class final Lcom/samsung/bt/btservice/AdapterProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AdapterProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/bt/btservice/AdapterProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/bt/btservice/AdapterProvider;


# direct methods
.method public constructor <init>(Lcom/samsung/bt/btservice/AdapterProvider;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/bt/btservice/AdapterProvider$DatabaseHelper;->this$0:Lcom/samsung/bt/btservice/AdapterProvider;

    const-string/jumbo v0, "btservice.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string/jumbo v0, "AdapterProvider"

    const-string/jumbo v1, "populating new database"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/bt/btservice/AdapterProvider$DatabaseHelper;->this$0:Lcom/samsung/bt/btservice/AdapterProvider;

    invoke-static {v0, p1}, Lcom/samsung/bt/btservice/AdapterProvider;->-wrap0(Lcom/samsung/bt/btservice/AdapterProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string/jumbo v0, "AdapterProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Upgrade database from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    :cond_1
    iget-object v0, p0, Lcom/samsung/bt/btservice/AdapterProvider$DatabaseHelper;->this$0:Lcom/samsung/bt/btservice/AdapterProvider;

    invoke-static {v0, p1}, Lcom/samsung/bt/btservice/AdapterProvider;->-wrap1(Lcom/samsung/bt/btservice/AdapterProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/samsung/bt/btservice/AdapterProvider$DatabaseHelper;->this$0:Lcom/samsung/bt/btservice/AdapterProvider;

    invoke-static {v0, p1}, Lcom/samsung/bt/btservice/AdapterProvider;->-wrap0(Lcom/samsung/bt/btservice/AdapterProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
