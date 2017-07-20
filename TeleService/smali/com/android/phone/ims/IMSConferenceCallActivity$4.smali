.class Lcom/android/phone/ims/IMSConferenceCallActivity$4;
.super Ljava/lang/Object;
.source "IMSConferenceCallActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ims/IMSConferenceCallActivity;->InitiateConfCallUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/ims/IMSConferenceCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$4;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$4;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get19(Lcom/android/phone/ims/IMSConferenceCallActivity;)I

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$4;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get13(Lcom/android/phone/ims/IMSConferenceCallActivity;)Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->getItem(I)Lcom/android/phone/ims/Participant;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v1}, Lcom/android/phone/ims/Participant$State;->isDELETABLE()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$4;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    iget-object v2, v0, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-set10(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$4;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v1, v3}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-set6(Lcom/android/phone/ims/IMSConferenceCallActivity;Z)Z

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$4;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v1, v3}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-wrap7(Lcom/android/phone/ims/IMSConferenceCallActivity;I)V

    return v3

    :cond_2
    return v2
.end method
