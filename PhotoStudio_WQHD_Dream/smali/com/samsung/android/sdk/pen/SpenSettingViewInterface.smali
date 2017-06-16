.class public interface abstract Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;
.super Ljava/lang/Object;
.source "SpenSettingViewInterface.java"


# static fields
.field public static final ACTION_COLOR_PICKER:I = 0x5

.field public static final ACTION_ERASER:I = 0x3

.field public static final ACTION_GESTURE:I = 0x1

.field public static final ACTION_NONE:I = 0x0

.field public static final ACTION_RECOGNITION:I = 0x8

.field public static final ACTION_SELECTION:I = 0x6

.field public static final ACTION_STROKE:I = 0x2

.field public static final ACTION_STROKE_REMOVER:I = 0x4

.field public static final ACTION_TEXT:I = 0x7

.field public static final TOOL_ERASER:I = 0x4

.field public static final TOOL_FINGER:I = 0x1

.field public static final TOOL_MOUSE:I = 0x3

.field public static final TOOL_MULTI_TOUCH:I = 0x5

.field public static final TOOL_PEN_BUTTON:I = 0x6

.field public static final TOOL_SPEN:I = 0x2

.field public static final TOOL_UNKNOWN:I


# virtual methods
.method public abstract closeControl()V
.end method

.method public abstract getCanvasHeight()I
.end method

.method public abstract getCanvasWidth()I
.end method

.method public abstract getToolTypeAction(I)I
.end method

.method public abstract setToolTypeAction(II)V
.end method
