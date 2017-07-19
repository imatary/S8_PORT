.class Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$4;
.super Ljava/lang/Object;
.source "QATestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->showOmcSettingDiaglog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

.field final synthetic val$editTestGid:Landroid/widget/EditText;

.field final synthetic val$editTestMcc:Landroid/widget/EditText;

.field final synthetic val$editTestMnc:Landroid/widget/EditText;

.field final synthetic val$editTestSpn:Landroid/widget/EditText;

.field final synthetic val$editTestSubset:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$4;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$4;->val$editTestMcc:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$4;->val$editTestMnc:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$4;->val$editTestSpn:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$4;->val$editTestGid:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$4;->val$editTestSubset:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getVirtualOMCInfo()Lcom/samsung/android/app/omcagent/omc/OmcInfo;
    .locals 2

    new-instance v0, Lcom/samsung/android/app/omcagent/omc/OmcInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$4;->val$editTestMcc:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->setMcc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$4;->val$editTestMnc:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->setMnc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$4;->val$editTestSpn:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->setServiceProviderName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$4;->val$editTestGid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->setGroupId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$4;->val$editTestSubset:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->setSubsetCode(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    sget-object v1, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$4;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$4;->getVirtualOMCInfo()Lcom/samsung/android/app/omcagent/omc/OmcInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->setVirtualSimActivated(Landroid/content/Context;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)Z

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$4;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->updateOMCStatus()V

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$4;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->read(Landroid/content/Context;)Z

    sget-object v0, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->setVersion(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$4;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->update(Landroid/content/Context;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V

    return-void
.end method
