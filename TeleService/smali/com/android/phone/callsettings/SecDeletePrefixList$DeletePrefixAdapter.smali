.class Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;
.super Landroid/widget/BaseAdapter;
.source "SecDeletePrefixList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/SecDeletePrefixList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeletePrefixAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private deletePrefixList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/callsettings/SecDeletePrefixList;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/SecDeletePrefixList;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/SecDeletePrefixList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;->deletePrefixList:Ljava/util/ArrayList;

    return-void
.end method

.method private drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/SecDeletePrefixList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "drawNormalScreen, autoreject pos : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " rejectNum = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;->deletePrefixList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;

    iget-object v3, v3, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/phone/callsettings/SecDeletePrefixList;->-wrap3(Lcom/android/phone/callsettings/SecDeletePrefixList;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;->deletePrefixList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$ViewHolder;

    if-nez v3, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400da

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$ViewHolder;-><init>(Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;)V

    const v3, 0x7f10026d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    const v3, 0x7f10026f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v3, 0x7f100262

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$ViewHolder;->delete:Landroid/view/View;

    const v3, 0x7f10026e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v3, v2, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$ViewHolder;->delete:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$ViewHolder;->delete:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$ViewHolder;->delete:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$ViewHolder;->delete:Landroid/view/View;

    new-instance v4, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$1;-><init>(Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v2, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$ViewHolder;->delete:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    :cond_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object v1

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$ViewHolder;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;->deletePrefixList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;->deletePrefixList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;->getItem(I)Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;

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

    iget-object v2, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/SecDeletePrefixList;

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

    invoke-static {v2, v3, v4}, Lcom/android/phone/callsettings/SecDeletePrefixList;->-wrap2(Lcom/android/phone/callsettings/SecDeletePrefixList;Ljava/lang/String;Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
