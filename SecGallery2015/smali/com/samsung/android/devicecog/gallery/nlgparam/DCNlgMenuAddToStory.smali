.class public Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuAddToStory;
.super Ljava/lang/Object;
.source "DCNlgMenuAddToStory.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;


# instance fields
.field private final mIsStoryNameMatch:Z

.field private final mIsSuccess:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuAddToStory;->mIsSuccess:Z

    iput-boolean p2, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuAddToStory;->mIsStoryNameMatch:Z

    return-void
.end method


# virtual methods
.method public addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuAddToStory;->mIsStoryNameMatch:Z

    if-eqz v1, :cond_1

    const-string/jumbo v2, "StoryName"

    const-string/jumbo v3, "Match"

    iget-boolean v1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuAddToStory;->mIsSuccess:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "yes"

    :goto_0
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v1, "no"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "StoryName"

    const-string/jumbo v2, "Exist"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_1
.end method
