.class Lcom/android/phone/AnswerMemoRecorder$RecorderThread$FileEndWithFilter;
.super Ljava/lang/Object;
.source "AnswerMemoRecorder.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AnswerMemoRecorder$RecorderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileEndWithFilter"
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/phone/AnswerMemoRecorder$RecorderThread;


# direct methods
.method public constructor <init>(Lcom/android/phone/AnswerMemoRecorder$RecorderThread;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread$FileEndWithFilter;->this$1:Lcom/android/phone/AnswerMemoRecorder$RecorderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread$FileEndWithFilter;->fileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread$FileEndWithFilter;->fileName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
