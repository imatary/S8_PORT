.class Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$1;
.super Landroid/os/Handler;
.source "LGTUwaCallServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$1;->this$0:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$1;->this$0:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    invoke-static {v0}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->-wrap8(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$1;->this$0:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-static {v1, v0}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->-wrap7(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$1;->this$0:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    invoke-static {}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->-get1()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->-wrap5(Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
