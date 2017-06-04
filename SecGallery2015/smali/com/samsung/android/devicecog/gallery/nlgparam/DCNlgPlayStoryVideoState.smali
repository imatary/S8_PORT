.class public Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgPlayStoryVideoState;
.super Ljava/lang/Object;
.source "DCNlgPlayStoryVideoState.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;


# instance fields
.field private final mIsSuccess:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgPlayStoryVideoState;->mIsSuccess:Z

    return-void
.end method


# virtual methods
.method public addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-boolean v1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgPlayStoryVideoState;->mIsSuccess:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "CrossStoryVideoEditorPlayStoryVideo"

    :goto_0
    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "Play"

    const-string/jumbo v3, "Available"

    iget-boolean v1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgPlayStoryVideoState;->mIsSuccess:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "yes"

    :goto_1
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    return-object v0

    :cond_0
    const-string/jumbo v1, "StoryDetailView"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "no"

    goto :goto_1
.end method
