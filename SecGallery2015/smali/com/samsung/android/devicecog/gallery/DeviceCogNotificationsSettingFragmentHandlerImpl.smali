.class Lcom/samsung/android/devicecog/gallery/DeviceCogNotificationsSettingFragmentHandlerImpl;
.super Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;
.source "DeviceCogNotificationsSettingFragmentHandlerImpl.java"


# instance fields
.field private final mExecutable:Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogNotificationsSettingFragmentHandlerImpl;->mExecutable:Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    return-void
.end method


# virtual methods
.method getDCCommandExecutable()Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogNotificationsSettingFragmentHandlerImpl;->mExecutable:Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    return-object v0
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogNotificationsSettingFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogNotificationsSettingFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "StoryInvitationNotificationOn"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogNotificationsSettingFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "StoryInvitationNotificationOff"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogNotificationsSettingFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "InvitedMembersNotificationOn"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogNotificationsSettingFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "InvitedMembersNotificationOff"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogNotificationsSettingFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "NewPostNotificationOn"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogNotificationsSettingFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "NewPostNotificationOff"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogNotificationsSettingFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "NewCommentNotificationOn"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogNotificationsSettingFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "NewCommentNotificationOff"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogNotificationsSettingFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "NewLikeNotificationOn"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogNotificationsSettingFragmentHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "NewLikeNotificationOff"

    const-string/jumbo v2, "EXECUTE_DC_HANDLER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
