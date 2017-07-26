.class Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$3;
.super Ljava/lang/Object;
.source "SecAutoRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

.field final synthetic val$item:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

.field final synthetic val$textLayout:Landroid/widget/LinearLayout;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v1, "SecAutoRejectList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "textlayout onClick ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iget v5, v5, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->checked:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iget v1, v1, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->checked:I

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, v4, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->checked:I

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iget-object v4, v1, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iget v1, v1, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->checked:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0d0c8a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v4, v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->-set0(Lcom/android/phone/callsettings/SecAutoRejectList;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$3;->val$textLayout:Landroid/widget/LinearLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iget-object v5, v5, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/SecAutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d058e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iget-object v5, v5, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v5}, Lcom/android/phone/callsettings/SecAutoRejectList;->-get4(Lcom/android/phone/callsettings/SecAutoRejectList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iget-object v5, v5, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/SecAutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0c44

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->-get7(Lcom/android/phone/callsettings/SecAutoRejectList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f10004f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iget v1, v1, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->checked:I

    if-eqz v1, :cond_3

    :goto_2
    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "unknown_mode"

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iget v3, v3, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->checked:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0d0c8b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_3
    move v3, v2

    goto :goto_2
.end method
