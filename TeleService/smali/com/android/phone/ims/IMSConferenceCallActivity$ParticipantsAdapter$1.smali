.class Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter$1;
.super Ljava/lang/Object;
.source "IMSConferenceCallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter$1;->this$1:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    iput p2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter$1;->this$1:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    iget-object v0, v0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    iget v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter$1;->val$pos:I

    invoke-static {v0, p1, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-wrap5(Lcom/android/phone/ims/IMSConferenceCallActivity;Landroid/view/View;I)V

    return-void
.end method
