.class Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback$2;
.super Ljava/lang/Object;
.source "IMSConferenceCallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;


# direct methods
.method constructor <init>(Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback$2;->this$1:Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "action_mode_close_button"

    const-string/jumbo v4, "id"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get0()Lcom/android/phone/ims/IMSConferenceCallActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
