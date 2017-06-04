.class public Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgDateLocationState;
.super Ljava/lang/Object;
.source "DCNlgDateLocationState.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;


# static fields
.field private static mCurrentStatus:Z

.field private static mSetOn:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-boolean p1, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgDateLocationState;->mSetOn:Z

    sput-boolean p2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgDateLocationState;->mCurrentStatus:Z

    return-void
.end method


# virtual methods
.method public addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 6

    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v2, p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgDateLocationState;->mSetOn:Z

    if-eqz v4, :cond_0

    const-string/jumbo v3, "TurnOnDateLocation"

    :goto_0
    const-string/jumbo v0, "AlreadySet"

    sget-boolean v4, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgDateLocationState;->mSetOn:Z

    sget-boolean v5, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgDateLocationState;->mCurrentStatus:Z

    if-ne v4, v5, :cond_1

    const-string/jumbo v1, "yes"

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    return-object v2

    :cond_0
    const-string/jumbo v3, "TurnOffDateLocation"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "no"

    goto :goto_1
.end method
