.class Lcom/android/phone/additionalservice/RegisterReplyMsg$13;
.super Ljava/lang/Object;
.source "RegisterReplyMsg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/additionalservice/RegisterReplyMsg;->saveRegisterReplymsg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/additionalservice/RegisterReplyMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$13;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$13;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    sget-object v1, Lcom/android/phone/additionalservice/RegisterReplyMsg$EditClass;->USSD_CODE:Lcom/android/phone/additionalservice/RegisterReplyMsg$EditClass;

    invoke-static {v0, v1}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-wrap0(Lcom/android/phone/additionalservice/RegisterReplyMsg;Lcom/android/phone/additionalservice/RegisterReplyMsg$EditClass;)V

    return-void
.end method
