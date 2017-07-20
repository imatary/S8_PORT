.class Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecordCallsAutomaticallyList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RecordCallsAutomaticallyList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordCallsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field private recordCallsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/phone/RecordCallsAutomaticallyList;


# direct methods
.method public constructor <init>(Lcom/android/phone/RecordCallsAutomaticallyList;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;->recordCallsList:Ljava/util/ArrayList;

    return-void
.end method

.method private drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string/jumbo v3, "RecordCallsAutomaticallyList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "drawNormalScreen, position : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object v1, p2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;->recordCallsList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;

    if-eqz v0, :cond_1

    const-string/jumbo v3, "RecordCallsAutomaticallyList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "drawNormalScreen, Number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;->number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;

    if-nez v3, :cond_4

    :cond_0
    iget-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400d5

    invoke-virtual {v3, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;-><init>(Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;)V

    const v3, 0x7f100047

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    const v3, 0x7f10004c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    const v3, 0x7f10004b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v3, 0x7f10004d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v3, 0x7f100262

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;->delete:Landroid/view/View;

    iget-object v3, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;->delete:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->semSetHoverPopupType(I)V

    const v3, 0x7f10004a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    :goto_0
    iget-object v3, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v3, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v3, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;->delete:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;->delete:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;->delete:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;->delete:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->semSetHoverPopupType(I)V

    iget-object v3, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;->delete:Landroid/view/View;

    new-instance v5, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$1;

    invoke-direct {v5, p0, v0}, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$1;-><init>(Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v5, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;->contact_name:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-static {v6}, Lcom/android/phone/RecordCallsAutomaticallyList;->-get0(Lcom/android/phone/RecordCallsAutomaticallyList;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v3, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-object v1

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$ViewHolder;

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;->recordCallsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;->recordCallsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;->getItem(I)Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
