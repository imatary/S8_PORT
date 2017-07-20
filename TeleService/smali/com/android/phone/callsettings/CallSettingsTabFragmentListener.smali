.class public Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;
.super Ljava/lang/Object;
.source "CallSettingsTabFragmentListener.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Fragment;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/ActionBar$TabListener;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mBundle:Landroid/os/Bundle;

.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mFragment:Landroid/app/Fragment;

.field private final mTag:Ljava/lang/String;


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 5

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mBundle:Landroid/os/Bundle;

    invoke-static {v2, v3, v4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mTag:Ljava/lang/String;

    const v4, 0x1020002

    invoke-virtual {p2, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    return-void
.end method
