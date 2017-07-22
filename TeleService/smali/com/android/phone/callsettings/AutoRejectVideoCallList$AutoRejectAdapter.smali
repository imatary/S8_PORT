.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;
.super Landroid/widget/BaseAdapter;
.source "AutoRejectVideoCallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRejectAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private autoRejectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    return-void
.end method

.method private drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
    .locals 10

    move-object v5, p2

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "drawNormalScreen, autoreject pos : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " rejectNum = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v7, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-wrap3(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    if-eqz v2, :cond_c

    if-nez p1, :cond_1

    iget-object v7, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v7}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-wrap0(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040019

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v7, 0x7f10004b

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v7, 0x7f10005e

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v7, 0x7f10004f

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$1;

    invoke-direct {v7, p0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$1;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$2;

    invoke-direct {v7, p0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$2;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    iget-object v7, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "for Unknown, mScreenType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v9}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get14(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I

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

    invoke-static {v7, v8}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-wrap3(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Checkable;

    if-lez v1, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-interface {v0, v7}, Landroid/widget/Checkable;->setChecked(Z)V

    return-object v5

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;

    if-nez v7, :cond_5

    :cond_2
    iget-object v7, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040016

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;)V

    const v7, 0x7f100047

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    const v7, 0x7f100049

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    const v7, 0x7f10004c

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    const v7, 0x7f10004b

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v7, 0x7f10004d

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v7, 0x7f10004f

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    const v7, 0x7f10004a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    iget-object v7, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v7}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get2(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/view/ActionMode;

    move-result-object v7

    if-nez v7, :cond_6

    iget-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setClickable(Z)V

    iget-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    new-instance v8, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$3;

    invoke-direct {v8, p0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$3;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    new-instance v8, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;

    invoke-direct {v8, p0, p1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$5;

    invoke-direct {v8, p0, p1, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$5;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;ILcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;

    invoke-direct {v8, p0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    if-eqz v7, :cond_3

    iget-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_7

    iget-object v7, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v7}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-wrap0(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_4
    :goto_3
    iget v1, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    iget-object v7, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mScreenType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v9}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get14(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I

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

    invoke-static {v7, v8}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-wrap3(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    check-cast v7, Landroid/widget/Checkable;

    if-lez v1, :cond_b

    const/4 v8, 0x1

    :goto_4
    invoke-interface {v7, v8}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    check-cast v7, Landroid/widget/Checkable;

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v8}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get9(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Z

    move-result v8

    invoke-interface {v7, v8}, Landroid/widget/Checkable;->setChecked(Z)V

    return-object v5

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;

    goto/16 :goto_1

    :cond_6
    iget-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setClickable(Z)V

    iget-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_7
    iget v7, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    if-nez v7, :cond_8

    iget-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v8, 0x7f0d051a

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_8
    iget v7, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    iget-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v8, 0x7f0d051b

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_9
    iget v7, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    iget-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v8, 0x7f0d051c

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_a
    iget v7, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    iget-object v7, v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v8, 0x7f0d051d

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_b
    const/4 v8, 0x0

    goto :goto_4

    :cond_c
    return-object p2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->getItem(I)Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

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

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

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

    invoke-static {v2, v3, v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-wrap2(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-set4(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Z)Z

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
