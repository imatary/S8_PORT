.class public Lcom/android/phone/callsettings/EditSubNumberScreen;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "EditSubNumberScreen.java"


# static fields
.field protected static cancelButton:Landroid/widget/Button;

.field protected static saveButton:Landroid/widget/Button;


# instance fields
.field private actionBar:Landroid/app/ActionBar;

.field editPhone:Ljava/lang/String;

.field editPrefix:Ljava/lang/String;

.field istoastshowing:Z

.field private minputPho:Landroid/widget/EditText;

.field private minputPre:Landroid/widget/EditText;

.field private minputType:Landroid/widget/Spinner;

.field subTypeSelect:I

.field updateMODE:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->istoastshowing:Z

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string/jumbo v0, "Configuration"

    const-string/jumbo v1, "changed "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditSubNumberScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditSubNumberScreen;->setCustomActionBar()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "EditSubNumberScreen"

    const-string/jumbo v2, "OnCreate ============== :"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditSubNumberScreen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->actionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->actionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/EditSubNumberScreen;->setHasOptionsMenu(Z)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditSubNumberScreen;->setCustomActionBar()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 10

    const v9, 0x7f0d0571

    const v8, 0x7f0d056d

    const/4 v7, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-interface {p1, v4, v3, v0, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v1, :cond_0

    move v3, v4

    :goto_0
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v3, 0x3

    invoke-interface {p1, v4, v3, v0, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v3, 0x2

    invoke-interface {p1, v4, v3, v2, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v1, :cond_1

    move v3, v4

    :goto_1
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v4, v5, v2, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x2

    const/4 v4, 0x0

    const v3, 0x7f04008f

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1001a3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPre:Landroid/widget/EditText;

    const v3, 0x7f1001a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPho:Landroid/widget/EditText;

    const v3, 0x7f1001a0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputType:Landroid/widget/Spinner;

    iput v4, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->subTypeSelect:I

    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->editPrefix:Ljava/lang/String;

    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->editPhone:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditSubNumberScreen;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "UPDATE_MODE"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->updateMODE:Z

    const-string/jumbo v3, "EditSubNumberScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateMODE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->updateMODE:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->updateMODE:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "EDITED_PREFIX"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->editPrefix:Ljava/lang/String;

    const-string/jumbo v3, "EDITED_PHONE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->editPhone:Ljava/lang/String;

    const-string/jumbo v3, "SELECTED_TYPE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->subTypeSelect:I

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPre:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPre:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPre:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPre:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->editPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPre:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPre:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2
    iget-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPho:Landroid/widget/EditText;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPho:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->editPhone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPho:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPho:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPho:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPho:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_4
    iget-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputType:Landroid/widget/Spinner;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputType:Landroid/widget/Spinner;

    iget v4, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->subTypeSelect:I

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputType:Landroid/widget/Spinner;

    new-instance v4, Lcom/android/phone/callsettings/EditSubNumberScreen$1;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/EditSubNumberScreen$1;-><init>(Lcom/android/phone/callsettings/EditSubNumberScreen;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_5
    return-object v2
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroyView()V

    const-string/jumbo v0, "EditSubNumberScreen"

    const-string/jumbo v1, "onDestroyView()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/EditSubNumberScreen;->softkeyLeftRun(Landroid/view/View;)V

    return v1

    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/EditSubNumberScreen;->softkeyRightRun(Landroid/view/View;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "EditSubNumberScreen"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPre:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPho:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8

    const/4 v5, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditSubNumberScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v0, :cond_2

    move v2, v3

    :goto_2
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v0, :cond_3

    :goto_3
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    move v3, v4

    goto :goto_3
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const-string/jumbo v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->actionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->actionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditSubNumberScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->actionBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "edittext_block_start"

    iget-object v1, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPre:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "edittext_block_end"

    iget-object v1, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPre:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setCustomActionBar()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->actionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->actionBar:Landroid/app/ActionBar;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->actionBar:Landroid/app/ActionBar;

    const v2, 0x7f04002a

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->actionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f10009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lcom/android/phone/callsettings/EditSubNumberScreen;->cancelButton:Landroid/widget/Button;

    sget-object v1, Lcom/android/phone/callsettings/EditSubNumberScreen;->cancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/callsettings/EditSubNumberScreen$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/EditSubNumberScreen$2;-><init>(Lcom/android/phone/callsettings/EditSubNumberScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f10009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lcom/android/phone/callsettings/EditSubNumberScreen;->saveButton:Landroid/widget/Button;

    sget-object v1, Lcom/android/phone/callsettings/EditSubNumberScreen;->saveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/callsettings/EditSubNumberScreen$3;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/EditSubNumberScreen$3;-><init>(Lcom/android/phone/callsettings/EditSubNumberScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPre:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPre:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " "

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\n"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPre:Landroid/widget/EditText;

    const v3, 0x7f0d0d20

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/EditSubNumberScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPho:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPho:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " "

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\n"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPho:Landroid/widget/EditText;

    const v3, 0x7f0d0d21

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/EditSubNumberScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditSubNumberScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "EDITED_PREFIX"

    iget-object v4, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPre:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "EDITED_PHONE"

    iget-object v4, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->minputPho:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "SELECTED_TYPE"

    iget v4, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->subTypeSelect:I

    if-lez v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "UPDATE_MODE"

    iget-boolean v3, p0, Lcom/android/phone/callsettings/EditSubNumberScreen;->updateMODE:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditSubNumberScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditSubNumberScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    return-void
.end method
