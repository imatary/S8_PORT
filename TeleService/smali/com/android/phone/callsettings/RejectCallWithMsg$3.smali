.class Lcom/android/phone/callsettings/RejectCallWithMsg$3;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/RejectCallWithMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$3;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$3;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const-string/jumbo v7, "wjshin text_layout onClick"

    invoke-static {v6, v7}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-wrap3(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$3;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v6, v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-set10(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$3;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v6, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-set6(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$3;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get2(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/view/ActionMode;

    move-result-object v6

    if-eqz v6, :cond_3

    const/4 v3, -0x1

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$3;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v6, v6, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$3;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v6, v6, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f100049

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1

    move v3, v2

    :cond_0
    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$3;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v6, v6, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$3;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v6, v6, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v6, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    return-void
.end method
