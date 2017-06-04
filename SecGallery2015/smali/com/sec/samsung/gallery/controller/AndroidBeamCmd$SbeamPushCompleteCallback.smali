.class Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$SbeamPushCompleteCallback;
.super Ljava/lang/Object;
.source "AndroidBeamCmd.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SbeamPushCompleteCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$SbeamPushCompleteCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$SbeamPushCompleteCallback;-><init>(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)V

    return-void
.end method


# virtual methods
.method public onNdefPushComplete(Landroid/nfc/NfcEvent;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "AndroidBeamCmd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SbeamPushCompleteCallback.onNdefPushComplete:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$SbeamPushCompleteCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mNdefStatus:I
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$500(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$SbeamPushCompleteCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mNdefStatus:I
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$500(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$SbeamPushCompleteCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    # setter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mNdefStatus:I
    invoke-static {v1, v4}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$502(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;I)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.directshare.DIRECT_SHARE_START_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$SbeamPushCompleteCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$600(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$SbeamPushCompleteCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    # setter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mNdefStatus:I
    invoke-static {v1, v4}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$502(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;I)I

    goto :goto_0
.end method
