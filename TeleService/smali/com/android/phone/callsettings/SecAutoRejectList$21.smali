.class Lcom/android/phone/callsettings/SecAutoRejectList$21;
.super Ljava/lang/Object;
.source "SecAutoRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecAutoRejectList;->drawSecUnknownItem(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

.field final synthetic val$checkbox:Landroid/view/View;

.field final synthetic val$textLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectList;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$21;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    iput-object p2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$21;->val$textLayout:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/phone/callsettings/SecAutoRejectList$21;->val$checkbox:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$21;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "unknown_mode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "SecAutoRejectList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "textlayout onClick ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/phone/callsettings/SecAutoRejectList$21;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$21;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0d0c19

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v5, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->-set0(Lcom/android/phone/callsettings/SecAutoRejectList;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$21;->val$textLayout:Landroid/widget/LinearLayout;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList$21;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v6}, Lcom/android/phone/callsettings/SecAutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d052e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList$21;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v6}, Lcom/android/phone/callsettings/SecAutoRejectList;->-get4(Lcom/android/phone/callsettings/SecAutoRejectList;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList$21;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v6}, Lcom/android/phone/callsettings/SecAutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0bd9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$21;->val$checkbox:Landroid/view/View;

    check-cast v2, Landroid/widget/Checkable;

    if-eqz v0, :cond_2

    :goto_2
    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$21;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    const v3, 0x7f0d01f2

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList$21;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    const v4, 0x7f0d0245

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "unknown_mode"

    int-to-long v6, v0

    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$21;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "unknown_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$21;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0d0c1a

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method
