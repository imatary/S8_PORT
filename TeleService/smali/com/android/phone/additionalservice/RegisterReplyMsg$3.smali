.class Lcom/android/phone/additionalservice/RegisterReplyMsg$3;
.super Ljava/lang/Object;
.source "RegisterReplyMsg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/additionalservice/RegisterReplyMsg;->RegisterReplymsgEventInit()V
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

    iput-object p1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$3;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$3;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    iget-object v2, v2, Lcom/android/phone/additionalservice/RegisterReplyMsg;->selectAllCheck:Landroid/view/View;

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$3;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    iget-object v2, v2, Lcom/android/phone/additionalservice/RegisterReplyMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$3;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    iget-object v5, v2, Lcom/android/phone/additionalservice/RegisterReplyMsg;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v5, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$3;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    iget-object v2, v2, Lcom/android/phone/additionalservice/RegisterReplyMsg;->selectAllCheck:Landroid/view/View;

    check-cast v2, Landroid/widget/Checkable;

    if-eqz v0, :cond_2

    :goto_2
    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$3;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    invoke-virtual {v2}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->invalidateOptionsMenu()V

    return-void

    :cond_2
    move v3, v4

    goto :goto_2
.end method
