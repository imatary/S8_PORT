.class Lcom/android/phone/additionalservice/RegisterReplyMsg$9;
.super Ljava/lang/Object;
.source "RegisterReplyMsg.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/additionalservice/RegisterReplyMsg;->alertdialogRegisterReplymsg(Lcom/android/phone/additionalservice/RegisterReplyMsg$EditClass;)V
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

    iput-object p1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$9;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$9;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$9;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    invoke-static {v0}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-get5(Lcom/android/phone/additionalservice/RegisterReplyMsg;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;->LIST_EMPTY:Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;

    :goto_0
    invoke-static {v1, v0}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-set1(Lcom/android/phone/additionalservice/RegisterReplyMsg;Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;)Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;

    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;->LIST_SHOWN:Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;

    goto :goto_0
.end method
