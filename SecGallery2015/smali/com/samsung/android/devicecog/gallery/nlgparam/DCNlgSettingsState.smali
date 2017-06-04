.class public Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSettingsState;
.super Ljava/lang/Object;
.source "DCNlgSettingsState.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;


# static fields
.field private static mIPref:I

.field private static mIsSuccess:Z

.field private static mSetOn:Z

.field private static mSyncScreen:Z


# direct methods
.method public constructor <init>(IZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-boolean p3, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSettingsState;->mIsSuccess:Z

    sput p1, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSettingsState;->mIPref:I

    sput-boolean p2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSettingsState;->mSetOn:Z

    sput-boolean p4, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSettingsState;->mSyncScreen:Z

    return-void
.end method


# virtual methods
.method public addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSettingsState;->mSyncScreen:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-boolean v1, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSettingsState;->mIsSuccess:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSettingsState;->mSetOn:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "AutoCreateStoriesOn"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "AutoCreateStoriesOff"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSettingsState;->mSetOn:Z

    if-eqz v1, :cond_4

    sget v1, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSettingsState;->mIPref:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const-string/jumbo v1, "AutoCreateStoriesOn"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    :cond_4
    sget-boolean v1, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSettingsState;->mSetOn:Z

    if-nez v1, :cond_0

    sget v1, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSettingsState;->mIPref:I

    if-nez v1, :cond_0

    const-string/jumbo v1, "AutoCreateStoriesOff"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0
.end method
