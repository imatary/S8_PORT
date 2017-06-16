.class Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;
.super Ljava/lang/Object;
.source "SpenFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/util/SpenFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FontAccess"
.end annotation


# instance fields
.field fontFile:Ljava/lang/String;

.field fontName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;->fontFile:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/util/SpenFont$FontAccess;->fontName:Ljava/lang/String;

    return-void
.end method
