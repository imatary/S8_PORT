.class public abstract Lcom/samsung/android/common/log/LogDescriptor;
.super Ljava/lang/Object;
.source "LogDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/common/log/LogDescriptor$Limit;,
        Lcom/samsung/android/common/log/LogDescriptor$Stream;
    }
.end annotation


# static fields
.field public static final NULL:Lcom/samsung/android/common/log/LogDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/common/log/LogDescriptor$1;

    invoke-direct {v0}, Lcom/samsung/android/common/log/LogDescriptor$1;-><init>()V

    sput-object v0, Lcom/samsung/android/common/log/LogDescriptor;->NULL:Lcom/samsung/android/common/log/LogDescriptor;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBefore()V
    .locals 0

    return-void
.end method

.method public abstract println(Ljava/lang/String;)V
.end method

.method public abstract shift()V
.end method
