.class Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$3;
.super Ljava/lang/Object;
.source "KddiCallPrevention.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

.field final synthetic val$item:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;

    iput p3, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    iget-object v4, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    iget-object v4, v4, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "callprevention, setOnCheckedChangeListener item.activate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;

    iget-boolean v6, v6, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->activate:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " isChecked:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/callsettings/KddiCallPrevention;->-wrap3(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;

    iget-boolean v4, v4, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->activate:Z

    if-ne p2, v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    iget-object v4, v4, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-static {v4}, Lcom/android/phone/callsettings/KddiCallPrevention;->-get3(Lcom/android/phone/callsettings/KddiCallPrevention;)Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$3;->val$position:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;

    iget-boolean v4, v4, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->activate:Z

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    iget-object v4, v4, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    iget-object v5, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;

    iget-object v5, v5, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget v6, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$3;->val$position:I

    invoke-static {v4, v5, v6, v1}, Lcom/android/phone/callsettings/KddiCallPrevention;->-wrap6(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;IZ)V

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    iget-object v4, v4, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-static {v4}, Lcom/android/phone/callsettings/KddiCallPrevention;->-wrap0(Lcom/android/phone/callsettings/KddiCallPrevention;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    iget-object v4, v4, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-static {v4}, Lcom/android/phone/callsettings/KddiCallPrevention;->-get10(Lcom/android/phone/callsettings/KddiCallPrevention;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    invoke-static {}, Lcom/android/phone/callsettings/KddiCallPrevention;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "composingData data error "

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v4, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    iget-object v4, v4, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-static {v4}, Lcom/android/phone/callsettings/KddiCallPrevention;->-wrap5(Lcom/android/phone/callsettings/KddiCallPrevention;)V

    return-void

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    iget-object v4, v4, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-static {v4}, Lcom/android/phone/callsettings/KddiCallPrevention;->-get4(Lcom/android/phone/callsettings/KddiCallPrevention;)Lcom/android/phone/callsettings/KddiCBarring;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v0, v2}, Lcom/android/phone/callsettings/KddiCBarring;->setCommad(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {}, Lcom/android/phone/callsettings/KddiCallPrevention;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "illegal transition from NETWORK_ERROR"

    invoke-static {v4, v5, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
