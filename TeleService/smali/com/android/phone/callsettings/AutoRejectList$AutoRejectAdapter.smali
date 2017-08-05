.class Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;
.super Landroid/widget/BaseAdapter;
.source "AutoRejectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/AutoRejectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRejectAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private autoRejectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectList;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/AutoRejectList;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    return-void
.end method

.method private drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
    .locals 13

    const/16 v12, 0x8

    const/4 v11, 0x3

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "drawNormalScreen, autoreject pos : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, " rejectNum = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v5, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v5, v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/android/phone/callsettings/AutoRejectList;->-wrap3(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    if-eqz v2, :cond_f

    iget-object v5, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-static {v5}, Lcom/android/phone/callsettings/AutoRejectList;->-wrap0(Lcom/android/phone/callsettings/AutoRejectList;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p1, :cond_0

    const-string/jumbo v5, "dcm_auto_reject_conditions"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ltz p1, :cond_1

    if-gt p1, v11, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->drawUnknownItem(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    return-object v3

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;

    if-nez v5, :cond_7

    :cond_2
    iget-object v5, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040016

    invoke-virtual {v5, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;)V

    const v5, 0x7f100047

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    const v5, 0x7f100049

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    const v5, 0x7f10004c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    const v5, 0x7f10004b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v5, 0x7f10004d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v5, 0x7f10004f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    const v5, 0x7f10004a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v5, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-static {v5}, Lcom/android/phone/callsettings/AutoRejectList;->-get2(Lcom/android/phone/callsettings/AutoRejectList;)Landroid/view/ActionMode;

    move-result-object v5

    if-nez v5, :cond_8

    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f10004e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;

    invoke-direct {v5, p0, v2}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;

    invoke-direct {v8, p0, p1, v2}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;ILcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$6;

    invoke-direct {v8, p0, v2}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$6;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_a

    iget-object v5, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-static {v5}, Lcom/android/phone/callsettings/AutoRejectList;->-wrap0(Lcom/android/phone/callsettings/AutoRejectList;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_5
    :goto_2
    iget v1, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    iget-object v5, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mScreenType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-static {v9}, Lcom/android/phone/callsettings/AutoRejectList;->-get14(Lcom/android/phone/callsettings/AutoRejectList;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "position = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " checked = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/phone/callsettings/AutoRejectList;->-wrap3(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    check-cast v5, Landroid/widget/Checkable;

    if-lez v1, :cond_e

    :goto_3
    invoke-interface {v5, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    if-eqz v5, :cond_6

    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    check-cast v5, Landroid/widget/Checkable;

    iget-object v6, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-static {v6}, Lcom/android/phone/callsettings/AutoRejectList;->-get10(Lcom/android/phone/callsettings/AutoRejectList;)Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_6
    return-object v3

    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;

    goto/16 :goto_0

    :cond_8
    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    if-eqz v5, :cond_9

    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$7;

    invoke-direct {v8, p0, p1}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$7;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;I)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_a
    iget v5, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    if-nez v5, :cond_b

    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v8, 0x7f0d057a

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_b
    iget v5, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    if-ne v5, v6, :cond_c

    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v8, 0x7f0d057b

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_c
    iget v5, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_d

    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v8, 0x7f0d057c

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_d
    iget v5, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    if-ne v5, v11, :cond_5

    iget-object v5, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v8, 0x7f0d057d

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_e
    move v6, v7

    goto :goto_3

    :cond_f
    return-object p2
.end method

.method private drawUnknownItem(ILandroid/view/View;)Landroid/view/View;
    .locals 11

    iget-object v9, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "drawUnknownItem, autoreject pos : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " rejectNum = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v8, v8, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/phone/callsettings/AutoRejectList;->-wrap3(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    move-object v7, p2

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    const-string/jumbo v8, "dcm_auto_reject_conditions"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040018

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f100052

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v8, 0x7f100053

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v8, 0x7f100054

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    move-object v4, v0

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/View;->setClickable(Z)V

    new-instance v8, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$1;

    invoke-direct {v8, p0, v3, v4, p1}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$1;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;Landroid/view/View;I)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "for p Unknown, mScreenType "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-static {v10}, Lcom/android/phone/callsettings/AutoRejectList;->-get14(Lcom/android/phone/callsettings/AutoRejectList;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "position = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " checked = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/callsettings/AutoRejectList;->-wrap3(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Checkable;

    if-lez v2, :cond_0

    const/4 v8, 0x1

    :goto_1
    invoke-interface {v0, v8}, Landroid/widget/Checkable;->setChecked(Z)V

    return-object v7

    :pswitch_0
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    const v8, 0x7f100055

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v8, 0x7f100056

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v8, 0x7f100057

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    const v8, 0x7f100058

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v8, 0x7f100059

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v8, 0x7f10005a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    const v8, 0x7f10005b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v8, 0x7f10005c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v8, 0x7f10005d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040019

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f10004b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v8, 0x7f10005e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v8, 0x7f10004f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v8, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$2;

    invoke-direct {v8, p0, v3}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$2;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/View;->setClickable(Z)V

    new-instance v8, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;

    invoke-direct {v8, p0, v3}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "for Unknown, mScreenType "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-static {v10}, Lcom/android/phone/callsettings/AutoRejectList;->-get14(Lcom/android/phone/callsettings/AutoRejectList;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "position = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " checked = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/callsettings/AutoRejectList;->-wrap3(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Checkable;

    if-lez v1, :cond_2

    const/4 v8, 0x1

    :goto_2
    invoke-interface {v0, v8}, Landroid/widget/Checkable;->setChecked(Z)V

    return-object v7

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->getItem(I)Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v1, 0x0

    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/callsettings/AutoRejectList;->-wrap2(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/AutoRejectList;->-set4(Lcom/android/phone/callsettings/AutoRejectList;Z)Z

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
