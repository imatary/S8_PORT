.class public Lcom/samsung/android/common/log/LogDescriptor$Limit;
.super Lcom/samsung/android/common/log/LogDescriptor;
.source "LogDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/common/log/LogDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Limit"
.end annotation


# instance fields
.field private limit:J

.field private logSteramDescriptor:Lcom/samsung/android/common/log/LogDescriptor$Stream;


# direct methods
.method public constructor <init>(Lcom/samsung/android/common/log/LogDescriptor$Stream;J)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/common/log/LogDescriptor;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/common/log/LogDescriptor$Limit;->logSteramDescriptor:Lcom/samsung/android/common/log/LogDescriptor$Stream;

    iput-wide p2, p0, Lcom/samsung/android/common/log/LogDescriptor$Limit;->limit:J

    return-void
.end method


# virtual methods
.method public onBefore()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/common/log/LogDescriptor$Limit;->logSteramDescriptor:Lcom/samsung/android/common/log/LogDescriptor$Stream;

    iget-wide v2, p0, Lcom/samsung/android/common/log/LogDescriptor$Limit;->limit:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/common/log/LogDescriptor$Stream;->isLogExceeds(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/common/log/LogDescriptor$Limit;->shift()V

    :cond_0
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/common/log/LogDescriptor$Limit;->logSteramDescriptor:Lcom/samsung/android/common/log/LogDescriptor$Stream;

    invoke-virtual {v0, p1}, Lcom/samsung/android/common/log/LogDescriptor$Stream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public shift()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/common/log/LogDescriptor$Limit;->logSteramDescriptor:Lcom/samsung/android/common/log/LogDescriptor$Stream;

    invoke-virtual {v0}, Lcom/samsung/android/common/log/LogDescriptor$Stream;->shift()V

    return-void
.end method
