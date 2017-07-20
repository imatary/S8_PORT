.class public Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;
.super Landroid/widget/BaseAdapter;
.source "IMSConferenceCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ims/IMSConferenceCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParticipantsAdapter"
.end annotation


# instance fields
.field confCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;


# direct methods
.method public constructor <init>(Lcom/android/phone/ims/IMSConferenceCallActivity;Lcom/android/phone/ims/IMSConferenceCallMgr;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->inflater:Landroid/view/LayoutInflater;

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->inflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    invoke-direct {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;-><init>()V

    invoke-static {p1, v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-set5(Lcom/android/phone/ims/IMSConferenceCallActivity;Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;)Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    iput-object p2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->confCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->confCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get19(Lcom/android/phone/ims/IMSConferenceCallActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->confCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get19(Lcom/android/phone/ims/IMSConferenceCallActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->confCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getDeletableCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-set7(Lcom/android/phone/ims/IMSConferenceCallActivity;I)I

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get16(Lcom/android/phone/ims/IMSConferenceCallActivity;)I

    move-result v0

    return v0

    :cond_1
    return v2
.end method

.method public getItem(I)Lcom/android/phone/ims/Participant;
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get19(Lcom/android/phone/ims/IMSConferenceCallActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->confCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipant(I)Lcom/android/phone/ims/Participant;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get19(Lcom/android/phone/ims/IMSConferenceCallActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->confCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getDeletableParticipant(I)Lcom/android/phone/ims/Participant;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->getItem(I)Lcom/android/phone/ims/Participant;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->confCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    if-eqz v0, :cond_0

    int-to-long v0, p1

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    move v5, p1

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->getItem(I)Lcom/android/phone/ims/Participant;

    move-result-object v2

    move-object v3, p3

    check-cast v3, Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get19(Lcom/android/phone/ims/IMSConferenceCallActivity;)I

    move-result v6

    if-ne v6, v9, :cond_6

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get22(Lcom/android/phone/ims/IMSConferenceCallActivity;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get22(Lcom/android/phone/ims/IMSConferenceCallActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get7()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, p1, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v6, v8}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-set10(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get15(Lcom/android/phone/ims/IMSConferenceCallActivity;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get15(Lcom/android/phone/ims/IMSConferenceCallActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    iget-object v6, v2, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v7}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get15(Lcom/android/phone/ims/IMSConferenceCallActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get7()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, p1, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get15(Lcom/android/phone/ims/IMSConferenceCallActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-set4(Lcom/android/phone/ims/IMSConferenceCallActivity;Z)Z

    :goto_1
    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get19(Lcom/android/phone/ims/IMSConferenceCallActivity;)I

    move-result v6

    if-ne v6, v9, :cond_2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    if-nez p2, :cond_7

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->inflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04006e

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;

    invoke-direct {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;-><init>()V

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-virtual {v6, p2, v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->setParticipantHolder(Landroid/view/View;Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-virtual {v6, p2, v0, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->setHolderData(Landroid/view/View;Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;Lcom/android/phone/ims/Participant;)V

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v6, v0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-virtual {v6, p2, v0, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->showParticipantHolder(Landroid/view/View;Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;Lcom/android/phone/ims/Participant;)V

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get9(Lcom/android/phone/ims/IMSConferenceCallActivity;)Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;->showButton:Z

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    new-instance v7, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter$1;

    invoke-direct {v7, p0, p1}, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter$1;-><init>(Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-object p2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-set4(Lcom/android/phone/ims/IMSConferenceCallActivity;Z)Z

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;

    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get19(Lcom/android/phone/ims/IMSConferenceCallActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v7}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get17(Lcom/android/phone/ims/IMSConferenceCallActivity;)I

    move-result v7

    if-eq v6, v7, :cond_8

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-virtual {v6, p2, v0, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->setHolderData(Landroid/view/View;Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;Lcom/android/phone/ims/Participant;)V

    goto :goto_2

    :cond_8
    iget-object v6, v0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    if-eqz v4, :cond_9

    iget-object v6, v2, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getView do not set holder Data number : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-wrap3(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-virtual {v6, p2, v0, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->setHolderData(Landroid/view/View;Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;Lcom/android/phone/ims/Participant;)V

    goto :goto_2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-wrap6(Lcom/android/phone/ims/IMSConferenceCallActivity;)V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-wrap9(Lcom/android/phone/ims/IMSConferenceCallActivity;)V

    return-void
.end method
