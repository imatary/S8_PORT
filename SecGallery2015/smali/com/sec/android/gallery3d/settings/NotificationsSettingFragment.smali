.class public Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "NotificationsSettingFragment.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;
.implements Ljava/util/Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationsFragment"


# instance fields
.field private mCommentsPref:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

.field private mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

.field private mInvitationPref:Landroid/preference/SwitchPreference;

.field private mInvitedMemberPref:Landroid/preference/SwitchPreference;

.field private mLikesPref:Landroid/preference/SwitchPreference;

.field private mPostPref:Landroid/preference/SwitchPreference;

.field private final mResourceId:I

.field private mShareNotificationPref:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const v0, 0x7f080005

    iput v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mResourceId:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->updateHeaderPreference(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->updateDependantPreferences(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->handleStoryInvitations(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->handleInvitedMembers(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->handleNewPosts(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->handleNewComments(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->handleNewLikes(Z)V

    return-void
.end method

.method private getSAScreenId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "507"

    return-object v0
.end method

.method private handleInvitedMembers(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->getSAScreenId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "5063"

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mInvitedMemberPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->setCheckState(Ljava/lang/Boolean;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private handleInvitedMembersFromBixby(Z)V
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v4, "InvitedMembersNotificationOn"

    :goto_0
    const-string/jumbo v5, "member_join"

    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-ne v0, p1, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const v5, 0x7f0a0823

    :goto_1
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    :goto_2
    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v3, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_3
    return-void

    :cond_0
    const-string/jumbo v4, "InvitedMembersNotificationOff"

    goto :goto_0

    :cond_1
    const v5, 0x7f0a0825

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->handleInvitedMembers(Z)V

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    const v5, 0x7f0a0824

    :goto_4
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    goto :goto_2

    :cond_3
    const v5, 0x7f0a0826

    goto :goto_4

    :cond_4
    const-string/jumbo v5, "NotificationsFragment"

    const-string/jumbo v6, "InvitedMembers preference is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v5, v4, v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_3
.end method

.method private handleNewComments(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->getSAScreenId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "5061"

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mCommentsPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->setCheckState(Ljava/lang/Boolean;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private handleNewCommentsFromBixby(Z)V
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v4, "NewCommentNotificationOn"

    :goto_0
    const-string/jumbo v5, "new_comments"

    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-ne v0, p1, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const v5, 0x7f0a082b

    :goto_1
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    :goto_2
    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v3, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_3
    return-void

    :cond_0
    const-string/jumbo v4, "NewCommentNotificationOff"

    goto :goto_0

    :cond_1
    const v5, 0x7f0a082d

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->handleNewComments(Z)V

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    const v5, 0x7f0a082c

    :goto_4
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    goto :goto_2

    :cond_3
    const v5, 0x7f0a082e

    goto :goto_4

    :cond_4
    const-string/jumbo v5, "NotificationsFragment"

    const-string/jumbo v6, "NewComments preference is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v5, v4, v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_3
.end method

.method private handleNewLikes(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->getSAScreenId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "5062"

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mLikesPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->setCheckState(Ljava/lang/Boolean;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private handleNewLikesFromBixby(Z)V
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v4, "NewLikeNotificationOn"

    :goto_0
    const-string/jumbo v5, "new_likes"

    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-ne v0, p1, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const v5, 0x7f0a082f

    :goto_1
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    :goto_2
    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v3, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_3
    return-void

    :cond_0
    const-string/jumbo v4, "NewLikeNotificationOff"

    goto :goto_0

    :cond_1
    const v5, 0x7f0a0831

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->handleNewLikes(Z)V

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    const v5, 0x7f0a0830

    :goto_4
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    goto :goto_2

    :cond_3
    const v5, 0x7f0a0832

    goto :goto_4

    :cond_4
    const-string/jumbo v5, "NotificationsFragment"

    const-string/jumbo v6, "NewLikes preference is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v5, v4, v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_3
.end method

.method private handleNewPosts(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->getSAScreenId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "5060"

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mPostPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->setCheckState(Ljava/lang/Boolean;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private handleNewPostsFromBixby(Z)V
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v4, "NewPostNotificationOn"

    :goto_0
    const-string/jumbo v5, "new_posts"

    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-ne v0, p1, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const v5, 0x7f0a0827

    :goto_1
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    :goto_2
    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v3, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_3
    return-void

    :cond_0
    const-string/jumbo v4, "NewPostNotificationOff"

    goto :goto_0

    :cond_1
    const v5, 0x7f0a0829

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->handleNewPosts(Z)V

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    const v5, 0x7f0a0828

    :goto_4
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    goto :goto_2

    :cond_3
    const v5, 0x7f0a082a

    goto :goto_4

    :cond_4
    const-string/jumbo v5, "NotificationsFragment"

    const-string/jumbo v6, "NewPosts preference is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v5, v4, v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_3
.end method

.method private handleStoryInvitations(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->getSAScreenId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "5059"

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mInvitationPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->setCheckState(Ljava/lang/Boolean;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private handleStoryInvitationsFromBixby(Z)V
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v2, "StoryInvitationNotificationOn"

    :goto_0
    const-string/jumbo v5, "story_invitation"

    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-ne v3, p1, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const v5, 0x7f0a081f

    :goto_1
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    :goto_2
    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v1, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_3
    return-void

    :cond_0
    const-string/jumbo v2, "StoryInvitationNotificationOff"

    goto :goto_0

    :cond_1
    const v5, 0x7f0a0821

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->handleStoryInvitations(Z)V

    invoke-virtual {v4, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    const v5, 0x7f0a0820

    :goto_4
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    goto :goto_2

    :cond_3
    const v5, 0x7f0a0822

    goto :goto_4

    :cond_4
    const-string/jumbo v5, "NotificationsFragment"

    const-string/jumbo v6, "StoryInvitation preference is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v5, v2, v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_3
.end method

.method private isAllChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mInvitationPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mInvitedMemberPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mPostPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mCommentsPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mLikesPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAllUnchecked()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mInvitationPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mInvitedMemberPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mPostPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mCommentsPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mLikesPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNotificationOff()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mShareNotificationPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadCommentsPref()V
    .locals 2

    const-string/jumbo v0, "new_comments"

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mCommentsPref:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mCommentsPref:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment$5;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment$5;-><init>(Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private loadInvitationPref()V
    .locals 2

    const-string/jumbo v0, "story_invitation"

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mInvitationPref:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mInvitationPref:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment$2;-><init>(Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private loadJoinedMemberPref()V
    .locals 2

    const-string/jumbo v0, "member_join"

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mInvitedMemberPref:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mInvitedMemberPref:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment$3;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment$3;-><init>(Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private loadLikesPref()V
    .locals 2

    const-string/jumbo v0, "new_likes"

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mLikesPref:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mLikesPref:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment$6;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment$6;-><init>(Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private loadNotificationPref()V
    .locals 3

    const-string/jumbo v1, "share_notification"

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mShareNotificationPref:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->getShareNotificationPrefValue(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mShareNotificationPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mShareNotificationPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a02f5

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setTitle(I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mShareNotificationPref:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment$1;-><init>(Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_0
    const v1, 0x7f0a02f3

    goto :goto_0
.end method

.method private loadPostPref()V
    .locals 2

    const-string/jumbo v0, "new_posts"

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mPostPref:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mPostPref:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment$4;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment$4;-><init>(Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private loadPreferences()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->loadNotificationPref()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->loadInvitationPref()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->loadJoinedMemberPref()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->loadPostPref()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->loadCommentsPref()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->loadLikesPref()V

    return-void
.end method

.method private makeNotificationOffNlg(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0804

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void
.end method

.method private onNotificationOff(Lcom/sec/samsung/gallery/core/Event;)Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->isNotificationOff()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->makeNotificationOffNlg(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setCheckState(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->isAllChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->updateHeaderPreference(Ljava/lang/Boolean;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->isAllUnchecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->updateHeaderPreference(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public static updateDependantPreferences(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "story_invitation"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "member_join"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "new_posts"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "new_comments"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "new_likes"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateDependantPreferences(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mInvitationPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mInvitedMemberPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mPostPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mCommentsPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mLikesPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private updateHeaderPreference(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->saveNotificationPrefrence(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mShareNotificationPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mShareNotificationPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a02f5

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setTitle(I)V

    return-void

    :cond_0
    const v0, 0x7f0a02f3

    goto :goto_0
.end method


# virtual methods
.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;->getScreenStateId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getNextExpectedState(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mResourceId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->loadPreferences()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/devicecog/gallery/DeviceCogNotificationsSettingFragmentListenerImpl;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogNotificationsSettingFragmentListenerImpl;-><init>(Landroid/app/Activity;Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/NotificationsSettingFragmentDCHandler;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/NotificationsSettingFragmentDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    :cond_0
    return-void
.end method

.method public onDCCommandStarted(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDCParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityPause()V

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    const-string/jumbo v0, "NotificationsFragment"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityResume()V

    :cond_0
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    const-string/jumbo v3, "NotificationsFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Event update ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_STORY_INVITATIONS_CONTROL:I

    if-ne v1, v3, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->onNotificationOff(Lcom/sec/samsung/gallery/core/Event;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v4, "StoryInvitationNotificationOn"

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->handleStoryInvitationsFromBixby(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_INVITED_MEMBERS_CONTROL:I

    if-ne v1, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->onNotificationOff(Lcom/sec/samsung/gallery/core/Event;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v4, "InvitedMembersNotificationOn"

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->handleInvitedMembersFromBixby(Z)V

    goto :goto_0

    :cond_2
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_NEW_POSTS_CONTROL:I

    if-ne v1, v3, :cond_3

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->onNotificationOff(Lcom/sec/samsung/gallery/core/Event;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v4, "NewPostNotificationOn"

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->handleNewPostsFromBixby(Z)V

    goto :goto_0

    :cond_3
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_NEW_COMMENTS_CONTROL:I

    if-ne v1, v3, :cond_4

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->onNotificationOff(Lcom/sec/samsung/gallery/core/Event;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v4, "NewCommentNotificationOn"

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->handleNewCommentsFromBixby(Z)V

    goto :goto_0

    :cond_4
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_NEW_LIKES_CONTROL:I

    if-ne v1, v3, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->onNotificationOff(Lcom/sec/samsung/gallery/core/Event;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v4, "NewLikeNotificationOn"

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->handleNewLikesFromBixby(Z)V

    goto :goto_0
.end method
