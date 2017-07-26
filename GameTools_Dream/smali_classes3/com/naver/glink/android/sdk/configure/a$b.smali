.class public Lcom/naver/glink/android/sdk/configure/a$b;
.super Ljava/lang/Object;
.source "SdkConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/configure/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/naver/glink/android/sdk/configure/a$b;->a:I

    iput-object p2, p0, Lcom/naver/glink/android/sdk/configure/a$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/configure/a$b;->c:Ljava/lang/String;

    return-void
.end method
