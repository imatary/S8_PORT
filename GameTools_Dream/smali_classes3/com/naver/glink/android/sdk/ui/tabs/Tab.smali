.class public Lcom/naver/glink/android/sdk/ui/tabs/Tab;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;
    }
.end annotation


# instance fields
.field public final a:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

.field final b:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public final c:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

.field d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;ILcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->a:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    iput p2, p0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->b:I

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->c:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

    return-void
.end method
