.class public Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;
.super Landroid/preference/PreferenceActivity;
.source "OmcInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;
    }
.end annotation


# instance fields
.field private command:Ljava/lang/String;

.field private testPreferenceFragment:Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->command:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->runCommand(Landroid/content/Context;)V

    return-void
.end method

.method private runCommand(Landroid/content/Context;)V
    .locals 4

    const-string v1, "localtest"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Show sideloading update"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x14000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->command:Ljava/lang/String;

    return-void

    :cond_0
    const-string v1, "reset"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity;->clearStatus(Landroid/content/Context;)V

    const-string v1, "Reset status"

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "resetomr"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;

    const-string v2, "persist.sys.omc_respath"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->clearOmrResources(Ljava/lang/String;)Z

    const-string v1, "Clear (/omr/res) folder."

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "pull"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Configuration update"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.omcagent.intent.USER_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v1, "Command is not matched"

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showCommandDialog()V
    .locals 7

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f040006

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0e0016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v5, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$1;-><init>(Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f080053

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f08009e

    new-instance v6, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$2;-><init>(Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v5, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$3;-><init>(Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onBuildHeaders(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "admin_header"

    const-string v2, "xml"

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f070001

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->testPreferenceFragment:Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;

    invoke-direct {v2}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->testPreferenceFragment:Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->testPreferenceFragment:Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v2, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f080094

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080042

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->showCommandDialog()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->toast:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
