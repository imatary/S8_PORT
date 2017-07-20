.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;
.super Ljava/lang/Object;
.source "AutoRejectVideoCallList.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

.field final synthetic val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    const-string/jumbo v2, "wjshin text_layout onLongClick"

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-wrap3(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get2(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get13(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v1, v3, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-wrap5(Lcom/android/phone/callsettings/AutoRejectVideoCallList;ILandroid/widget/ListView;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get6(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get6(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get6(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mScreenType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get14(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-wrap3(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;)V

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-wrap0(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v5

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v1, v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-set8(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)I

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v1, v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-set6(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)I

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-wrap4(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-virtual {v1, v5}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->setActionMode(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get13(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->semStartMultiChoiceMode()V

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-wrap0(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get13(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get17(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :goto_1
    return v4

    :cond_4
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get13(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get17(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1
.end method
