.class Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4$1;
.super Ljava/lang/Object;
.source "KddiCallPrevention.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;

.field final synthetic val$item:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4$1;->this$2:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;

    iput-object p2, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4$1;->val$item:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;

    iput p3, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/phone/callsettings/KddiCallPrevention;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Delete is clicked "

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4$1;->this$2:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;

    iget-object v3, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    iget-object v4, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4$1;->val$item:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;

    iget-object v4, v4, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget v5, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4$1;->val$position:I

    invoke-static {v3, v4, v5}, Lcom/android/phone/callsettings/KddiCallPrevention;->-wrap1(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;I)V

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4$1;->this$2:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;

    iget-object v3, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-static {v3}, Lcom/android/phone/callsettings/KddiCallPrevention;->-wrap0(Lcom/android/phone/callsettings/KddiCallPrevention;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4$1;->this$2:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;

    iget-object v3, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    iget-object v3, v3, Lcom/android/phone/callsettings/KddiCallPrevention;->mBaseList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4$1;->this$2:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;

    iget-object v3, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    iget-object v3, v3, Lcom/android/phone/callsettings/KddiCallPrevention;->mModList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4$1;->this$2:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;

    iget-object v3, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    iget-object v3, v3, Lcom/android/phone/callsettings/KddiCallPrevention;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4$1;->this$2:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;

    iget-object v4, v4, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    iget-object v4, v4, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    iget-object v4, v4, Lcom/android/phone/callsettings/KddiCallPrevention;->mModList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v1, v3, v4

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4$1;->this$2:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;

    iget-object v3, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-static {v3}, Lcom/android/phone/callsettings/KddiCallPrevention;->-get10(Lcom/android/phone/callsettings/KddiCallPrevention;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v1, v6, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/phone/callsettings/KddiCallPrevention;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "composingData data error mUnLock :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4$1;->this$2:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    iget-object v5, v5, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-static {v5}, Lcom/android/phone/callsettings/KddiCallPrevention;->-get10(Lcom/android/phone/callsettings/KddiCallPrevention;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " diff:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4$1;->this$2:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;

    iget-object v3, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-static {v3}, Lcom/android/phone/callsettings/KddiCallPrevention;->-get4(Lcom/android/phone/callsettings/KddiCallPrevention;)Lcom/android/phone/callsettings/KddiCBarring;

    move-result-object v3

    const/16 v4, 0x9

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/phone/callsettings/KddiCBarring;->setCommad(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/android/phone/callsettings/KddiCallPrevention;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "illegal transition from NETWORK_ERROR"

    invoke-static {v3, v4, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
