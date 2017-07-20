.class Lcom/android/phone/photoring/PhotoringPhrasesEdit$1;
.super Landroid/os/Handler;
.source "PhotoringPhrasesEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/photoring/PhotoringPhrasesEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$1;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$1;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/storage/emulated/0/photoring/photoring_temp.mp4"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->-set0(Lcom/android/phone/photoring/PhotoringPhrasesEdit;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$1;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->-wrap0(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
