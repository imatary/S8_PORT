.class Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$2;
.super Ljava/lang/Object;
.source "AndroidBeamCmd.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->initBeamHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v2, "AndroidBeamCmd"

    const-string/jumbo v3, "create beam uris"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$300(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$OnGetFilePathListener;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$400(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "AndroidBeamCmd"

    const-string/jumbo v3, "sbeam uri create"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "AndroidBeamCmd"

    const-string/jumbo v3, "abeam uri create"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$500(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$300(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$OnGetFilePathListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$OnGetFilePathListener;->onGetFilePath()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$600(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$AndroidBeamUtils;->toUriPathArray(Landroid/content/Context;Ljava/util/List;)[Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method
